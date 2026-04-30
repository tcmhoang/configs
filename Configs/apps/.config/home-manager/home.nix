{
  config,
  pkgs,
  osConfig,
  ...
}: {
  home = {
    username = "tcmhoang";
    homeDirectory = "/home/tcmhoang";
    sessionVariables = {
      EDITOR = "emacs";
    };

    packages = with pkgs; [
      fish
      hblock
      e2fsprogs
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
      glow
      fd
      eza
      license-generator
      topgrade
      proximity-sort
      tuckr
      ddrescue
      feh

      ast-grep
      treefmt
      direnv
      typst
      semgrep
      shellcheck-minimal

      android-tools

      spicetify-cli

      emacs
      neovim
      jupyter
      jetbrains.idea-oss
      r_studio

      R

      virtiofsd
      podman-compose
      qemu

      git
      git-ignore
      git-lfs
      git-filter-repo
      gh
      gh-dash
      haskellPackages.ods2csv

      xdotool # x11 bridge needs it

      hunspell
      hunspellDicts.en_US

      spotify
      signal-desktop

      kando

      qbittorrent
      nicotine-plus

      sioyek

      livecaptions
      makemkv
    ];
    stateVersion = "26.05";
  };

  systemd.user.startServices = "sd-switch";
  services.podman.enable = true;

  programs.home-manager.enable = true;
}
