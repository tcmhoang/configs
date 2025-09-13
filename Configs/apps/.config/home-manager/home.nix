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
      todoist
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
      topgrade
      feh
      proximity-sort
      tuckr
      cloudflare-warp

      spicetify-cli
      spotify
      signal-desktop
      element-desktop
      qbittorrent
      livecaptions
      kando

      emacs
      neovim

      jetbrains.idea-community-bin

      qemu
      virtiofsd
      podman-compose

      git
      git-ignore
      git-lfs
      gh
      gh-dash
      odt2txt

      fusuma
      ydotool

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
