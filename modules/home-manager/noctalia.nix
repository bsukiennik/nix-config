{
  home.file.".config/noctalia/palettes/eo-evangelion-red-sea-palette.json" = {
    source = /home/bassme/code/nix-config/dotfiles/noctalia/eo-evangelion-red-sea-palette.json;
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
        directory = "${config.home.homeDirectory}/Pictures/wallpapers";
        default.path = "${config.home.homeDirectory}/Pictures/wallpapers/eo-red-sea-minimalist.webp";
      };
    };
  };
}