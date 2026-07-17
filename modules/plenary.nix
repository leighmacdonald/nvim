{pkgs, ...}: {
  vim = {
    extraPlugins = with pkgs.vimPlugins; {
      plenary = {
        package = plenary-nvim;
      };
    };
  };
}
