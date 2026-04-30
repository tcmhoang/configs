{
  config,
  pkgs,
  osConfig,
  ...
}: let
  gpu = with pkgs;
    map config.lib.nixGL.wrap [
      spotify
      signal-desktop

      kando
    ];
in {
  targets.genericLinux.nixGL = {
    packages = pkgs.hardcodedNixGL;
    defaultWrapper = "mesa";
    offloadWrapper = "nvidiaPrime";
    installScripts = ["mesa" "nvidiaPrime"];
  };

  home = {
    username = "tcmhoang";
    homeDirectory = "/home/tcmhoang";
    sessionVariables = {
      EDITOR = "nvim";
    };

    packages = with pkgs;
      [
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
        jetbrains.idea-oss
        r_studio
        jupyter

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

        qbittorrent
        nicotine-plus

        sioyek

        livecaptions
        makemkv
      ]
      ++ gpu;
    stateVersion = "25.11";
  };

  systemd.user.startServices = "sd-switch";
  services.podman.enable = true;

  programs.home-manager.enable = true;
}
