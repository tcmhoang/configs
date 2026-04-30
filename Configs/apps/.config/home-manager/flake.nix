{
  description = "tcmhoang's nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    home-manager,
    nixpkgs,
    ...
  } @ inputs: let
    inherit (self) outputs;
    stdenv.hostPlatform.system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit (stdenv.hostPlatform) system;
      overlays = [
        (import ./overlays/r_studio.nix)
      ];
      config = {
        allowUnfree = true;
        allowUnfreePredicate = _: true;
      };
    };
  in {
    formatter.${stdenv.hostPlatform.system} = nixpkgs.legacyPackages.${stdenv.hostPlatform.system}.alejandra;

    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
    };

    homeConfigurations = {
      "tcmhoang" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = {inherit inputs;};
        modules = [
          {
            nix = {
              package = pkgs.nix;
              settings.experimental-features = ["nix-command" "flakes"];
            };
          }

          ./home.nix
        ];
      };
    };
  };
}
