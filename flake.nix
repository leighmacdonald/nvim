{
  description = "Neovim IDE";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nvf,
    ...
  } @ inputs: let
    system = "x86_64-linux"; # Adjust for your system, e.g., "aarch64-linux" or "aarch64-darwin"
    pkgs = nixpkgs.legacyPackages.${system};

    # Build the nvf configuration
    nvimConfiguration = nvf.lib.neovimConfiguration {
      inherit pkgs;
      modules = [
        ./modules
      ];
    };
  in {
    packages.${system} = {
      default = nvimConfiguration.neovim;
    };
  };
}
