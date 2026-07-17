{
  description = "Neovim IDE";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nvf,
      ...
    }@inputs:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      forEachSystem = f: nixpkgs.lib.genAttrs systems (system: f system);
    in
    {
      packages = forEachSystem (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          nvimConfiguration = nvf.lib.neovimConfiguration {
            inherit pkgs;
            modules = [
              ./modules
            ];
          };
        in
        {
          default = nvimConfiguration.neovim;
        }
      );

      nixosModules.default = { pkgs, ... }: {
        programs.neovim.package = self.packages.${pkgs.system}.default;
      };

      homeManagerModules.default = { pkgs, ... }: {
        programs.neovim.package = self.packages.${pkgs.system}.default;
      };
    };
}
