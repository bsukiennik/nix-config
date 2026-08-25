
{
  config,
  ...
}:
{
  programs.fish = {
    enable = true;
    functions.fish_greeting = ''
      microfetch
    '';
  };

  home.shellAliases = {
    z = "zoxide";
    fetch = "microfetch";
  };
}
