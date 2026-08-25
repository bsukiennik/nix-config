{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        include = "~/.config/foot/themes/noctalia";
        font = "JetBrainsMono Nerd Font:size=9";
      };
      colors-dark = {
        alpha = 0.50;
        blur = true;
      };
    };
  };
}
