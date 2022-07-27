{ config, pkgs, ... }:

{

  programs = {

    # Let home manager install and enable itself
    home-manager.enable = true;

    vscode = {
      enable = true;
      extensions = with pkgs.vscode-extensions; [
      ];
    };
  };
 
   

  home.sessionVariables = {
    EDITOR = "nvim";
    PAGER = "LESS";
    LESS = "-RF --LONG-PROMPT --mouse --wheel-lines=5";
  };


  nixpkgs.config.allowUnfree = true;
  #nixpkgs.config.brave.commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland";

  home.packages = with pkgs; [
    #brave
    alacritty
    ripgrep
    lsd
    tmux
    neomutt
    cowsay
    fortune
    tree
    gdb
    gzip
    jq
    lynx
    neofetch
    watch
    fzf
    htop
    rsync
    openfortivpn
    nmap
    spotify
    bitwarden-cli
    docker-compose
    fd
    #didyoumean
    libreoffice
    firefox
    # Sway related packages
    swaylock # idle screen lock
    swayidle # idle timer
    wl-clipboard
    mako # notifications
    waybar
    wofi # app launcher
  ];
      
  # User services
  #services.opensnitch-ui.enable = true; # TODO

  #xdg.configFile."alacritty/alacritty.yml".source = /persist/etc/nixos/dotfiles/alacritty/alacritty.yml;
}

