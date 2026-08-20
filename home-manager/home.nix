# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # inputs.niri.homeModules.niri
    inputs.noctalia.homeModules.default
    # If you want to use modules your own flake exports (from modules/home-manager):
    # inputs.self.homeManagerModules.example

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      inputs.self.overlays.additions
      inputs.self.overlays.modifications
      inputs.self.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };

  home = {
    username = "bassme";
    homeDirectory = "/home/bassme";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs; [
    vscodium
    discord
    tree
    nautilus

  ];

  programs.foot = {
    enable = true;
  };

  programs.fish = {
    enable = true;
  };

  # programs.niri = {
  #   enable = true;
  #   settings = {
  #     spawn-at-startup = [
  #       { argv = ["nocatlia"]; }
  #     ];
  #     prefer-no-csd = true;
  #   };
  # };

  programs.noctalia = {
    enable = true;
    settings = { # This may also be a string or path to a .toml file.
      theme = {
        mode = "dark";
        source = "builtin";
        builtin = "Nord";
      };
      wallpaper = {
        enabled = true;
        directory = "/home/bassme/Pictures/wallpapers";
        default.path = "/home/bassme/Pictures/wallpapers/eo-red-sea-minimalist.webp";
      };
    };
  };

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;

  home.stateVersion = "26.05";
}
