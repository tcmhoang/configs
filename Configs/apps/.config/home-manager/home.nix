{ config, pkgs, ... }:

{
 home = {
username = "tcmhoang";
homeDirectory = "/home/tcmhoang";
sessionVariables = {
    EDITOR = "nvim";
  };


              packages = with pkgs; [
                hblock
                odt2txt
                gh
                keybase
                spicetify-cli
                signal-desktop
                spotify
                slack
                telegram-desktop
                aria
                fish
		todoist

		e2fsprogs
                uutils-coreutils-noprefix
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

                xclip
                fusuma
                xdotool

                hunspell
                hunspellDicts.en_US
              ];
stateVersion = "24.11";

            };


services.keybase.enable = true;
            systemd.user.startServices = "sd-switch";
            services.fusuma.extraPackages = with pkgs; [coreutils xdotool];

  programs.home-manager.enable = true;
}
