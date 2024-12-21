{
  config,
  pkgs,
  osConfig,
  nixgl,
  ...
}: {
  home = {
    username = "tcmhoang";
    homeDirectory = "/home/tcmhoang";
    sessionVariables = {
      EDITOR = "nvim";
    };
    enableNixpkgsReleaseCheck = false;

    packages = with pkgs; [
      hblock
      odt2txt
      gh
      gh-dash
      keybase
      spicetify-cli
      spotify
      signal-desktop
      slack
      aria
      fish
      todoist
      livecaptions

      e2fsprogs
      uutils-coreutils-noprefix
      delta
      direnv
      zoxide
      progress
      fzf
      starship
      tmux
      ripgrep
      tealdeer
      aria
      ouch
      bat
      mdcat
      fd
      eza
      license-generator
      git-ignore
      topgrade
      feh
      proximity-sort
      git
      git-lfs
      tuckr
      qbittorrent

      xclip
      fusuma
      xdotool

      hunspell
      hunspellDicts.en_US
    ];
    stateVersion = "25.05";
  };

  systemd.user.startServices = "sd-switch";
  services.fusuma.extraPackages = with pkgs; [coreutils xdotool];

  programs.home-manager.enable = true;
}
