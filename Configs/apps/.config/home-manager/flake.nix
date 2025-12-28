{
  description = "tcmhoang's nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixgl = {
      url = "github:nix-community/nixGL";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    home-manager,
    nixgl,
    nixpkgs,
    ...
  } @ inputs: let
    inherit (self) outputs;
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      overlays = [
        inputs.nixgl.overlay
        (import ./overlays/r_studio.nix)
      ];
      config = {
        allowUnfree = true;
        allowUnfreePredicate = _: true;
      };
    };
  in {
    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;

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
