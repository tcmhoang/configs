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
      fish
      hblock
      e2fsprogs
      uutils-coreutils-noprefix
      delta
      zoxide
      progress
      fzf
      starship
      tmux
      ripgrep
      tealdeer
      aria2
      ouch
      bat
      mdcat
      fd
      eza
      license-generator
      topgrade
      feh
      proximity-sort
      tuckr
      ddrescue

      ast-grep
      treefmt
      direnv
      typst
      semgrep # test

      android-tools

      spicetify-cli
      spotify
      signal-desktop
      qbittorrent
      amule
      livecaptions
      kando

      emacs
      neovim

      jetbrains.idea-community-bin
      R
      rstudio

      gemini-cli-bin
      geminicommit

      qemu
      virtiofsd
      podman-compose

      git
      git-ignore
      git-lfs
      gh
      gh-dash
      odt2txt

      xdotool # x11 bridge needs it

      hunspell
      hunspellDicts.en_US
    ];
    stateVersion = "25.05";
  };

  systemd.user.startServices = "sd-switch";
  services.podman.enable = true;
  services.fusuma.extraPackages = with pkgs; [coreutils ydotool];

  programs.home-manager.enable = true;
}
