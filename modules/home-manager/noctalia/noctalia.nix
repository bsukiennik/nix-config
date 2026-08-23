{
  config,
  ...
}:
let
  noctaliaModulePath = "/home/bassme/code/nix-config/modules/home-manager/noctalia";
in
{
  xdg.configFile = {
    # Color palette
    "noctalia/palettes/eo-evangelion-red-sea-palette.json" = {
      source = config.lib.file.mkOutOfStoreSymlink "${noctaliaModulePath}/eo-evangelion-red-sea-palette.json";
    };

    # Wallpaper
    "noctalia/wallpapers/eo-evangelion-red-sea-wallpaper.webp" = {
      source = config.lib.file.mkOutOfStoreSymlink "${noctaliaModulePath}/eo-evangelion-red-sea-wallpaper.webp";
    };
  };

  programs.noctalia = {
    enable = true;
    settings = {
      theme = {
        mode = "dark";
        source = "custom";
        custom_palette  = "eo-evangelion-red-sea-palette";
      };
      wallpaper = {
        enabled = true;
        directory = "/home/bassme/.config/noctalia/wallpapers";
        default.path = "/home/bassme/.config/noctalia/wallpapers/eo-evangelion-red-sea-wallpaper.webp";
      };
    };
  };
}