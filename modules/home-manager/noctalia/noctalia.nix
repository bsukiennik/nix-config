{
  config,
  ...
}: {
  xdg.configFile = {
    # Color palette
    "noctalia/eo-evangelion-red-sea-palette.json" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/bassme/code/nix-config/modules/home-manager/noctalia/eo-evangelion-red-sea-palette.json";
    };

    # Wallpaper
    "noctalia/wallpapers/eo-evangelion-red-sea-wallpaper.webp" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/bassme/code/nix-config/modules/home-manager/noctalia/eo-evangelion-red-sea-wallpaper.webp";
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
        directory = xdg.configFile."noctalia/wallpapers/";
        default.path = xdg.configFile."noctalia/wallpapers/eo-evangelion-red-sea-wallpaper.webp";
      };
    };
  };
}