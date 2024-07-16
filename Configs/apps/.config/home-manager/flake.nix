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
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
        allowUnfreePredicate = _: true;
      };
    };
  in {
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
    homeConfigurations = {
      "tcmhoang" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = {inherit inputs outputs;};
        modules = [
          {
            nix = {
              package = pkgs.nix;
              settings.experimental-features = ["nix-command" "flakes"];
            };

            nixpkgs = {
              config = {
                allowUnfree = true;
                allowUnfreePredicate = true;
              };
            };
            
                      }

	./home.nix
        ];
      };
    };
  };
}
