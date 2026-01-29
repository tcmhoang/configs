{
  config,
  pkgs,
  osConfig,
  ...
}: let
  gpu = with pkgs;
    map config.lib.nixGL.wrap [
      feh

      livecaptions

      spotify
      signal-desktop

      makemkv

      sioyek
      kando

      jetbrains.idea-oss
      r_studio
      emacs

      qbittorrent
      nicotine-plus
    ];

  dgpu = with pkgs;
    map config.lib.nixGL.wrapOffload [
      qemu
    ];
in {
  targets.genericLinux.nixGL = {
    packages = pkgs.nixgl;
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
        glow
        fd
        eza
        license-generator
        topgrade
        proximity-sort
        tuckr
        ddrescue

        ast-grep
        treefmt
        direnv
        typst
        semgrep # test
	shellcheck-minimal

        android-tools

        spicetify-cli

        neovim

        R

        gemini-cli-bin
        geminicommit

        virtiofsd
        podman-compose

        git
        git-ignore
        git-lfs
	git-filter-repo
        gh
        gh-dash
        odt2txt

        xdotool # x11 bridge needs it

        hunspell
        hunspellDicts.en_US
      ]
      ++ gpu ++ dgpu;
    stateVersion = "25.11";
  };

  systemd.user.startServices = "sd-switch";
  services.podman.enable = true;

  programs.home-manager.enable = true;
}
