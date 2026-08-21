{
  home.file.".config/noctalia/palettes/eo-evangelion-red-sea-palette.json" = {
    source = ./eo-evangelion-red-sea-palette.json;
  };

  programs.noctalia = {
    enable = true;
    settings = { # This may also be a string or path to a .toml file.
      theme = {
        mode = "dark";
        source = "custom";
        custom_palette  = "eo-evangelion-red-sea-palette";
      };
      wallpaper = {
        enabled = true;
        directory = "/home/bassme/Pictures/wallpapers";
        default.path = "/home/bassme/Pictures/wallpapers/eo-red-sea-minimalist.webp";
      };
    };
  };
}