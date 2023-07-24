{ config, pkgs, lib, nix-doom-emacs, ... }:

{
  imports = [ ./hardware-configuration.nix ./home/home.nix ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.networkmanager.enable = true;
  nix.settings.substituters = lib.mkBefore [
    "https://mirror.sjtu.edu.cn/nix-channels/store"
    "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
  ];

  time.timeZone = "Asia/Shanghai";

  i18n.defaultLocale = "zh_CN.UTF-8";
  fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = [ "Iosevka" ]; })
    sarasa-gothic
    apl386
  ];
  fonts.enableDefaultFonts = true;
  fonts.fontconfig = {
    defaultFonts = {
      serif = [ "Iosevka" "Sarasa Gothic" ];
      sansSerif = [ "Iosevka" "Sarasa Gothic" ];
      monospace = [ "Iosevka" "Sarasa Gothic" ];
      emoji = [ "Iosevka" "Sarasa Gothic" ];
    };
  };
  i18n.inputMethod = {
    enabled = "ibus";
    ibus.engines = with pkgs.ibus-engines; [ rime ];
  };

  services.xserver.enable = true;
  services.xserver.excludePackages = [ pkgs.xterm ];
  services.xserver.displayManager.startx.enable = true;

  services.xserver.layout = "us";

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  services.xserver.libinput.enable = true;

  users.defaultUserShell = pkgs.zsh;
  users.users.wlxxs = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "libvirtd" ];
  };

  environment.systemPackages = with pkgs; [
    go
    shellcheck
    nodePackages.bash-language-server
    zeal
    libreoffice-qt
    xvkbd
    swiProlog
    ghc
    cabal-install
    haskell-language-server
    erlang
    rebar3
    erlang-ls
    gzdoom
    enyo-launcher
    xst
    file
    yt-dlp
    cmus
    cava
    gnuapl
    sbcl
    catclock
    cwm
    picom
    hsetroot
    virt-manager
    neofetch
    fzy
    starship
    zoxide
    mcfly
    firefox-esr
    tor-browser-bundle-bin
    thunderbird
    qbittorrent
    obs-studio
    mpv
    zathura
    imagemagick
    ffmpeg
    nixfmt
    ripgrep
    htop
    sqlite
    texlive.combined.scheme-full
    (python3.withPackages (ps:
      with ps; [
        pip
        pandas
        black
        pyflakes
        isort
        tkinter
        matplotlib
        jieba
      ]))
    nodejs
    xclip
    godot
    gdtoolkit
    gnumake
    cmake
    cmake-language-server
    gcc
    man-pages
    man-pages-posix
    ccls
  ];

  documentation.dev.enable = true;

  environment.variables = {
    GTK_IM_MODULE = "ibus";
    QT_IM_MODULE = "ibus";
    XMODIFIERS = "@im=ibus";
  };

  virtualisation.libvirtd.enable = true;
  programs.dconf.enable = true;

  programs.slock.enable = true;

  programs.tmux = { enable = true; };

  programs.git = { enable = true; };

  programs.light.enable = true;

  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";
    };
  };
  environment.shells = with pkgs; [ zsh ];

  services.openssh.enable = true;
  services.v2raya.enable = true;
  services.tlp.enable = true;
  services.emacs = {
    enable = true;
    package = nix-doom-emacs.packages.x86_64-linux.default.override {
      doomPrivateDir = ./doom.d;
    };
  };

  networking.firewall.enable = false;

  nix.gc = {
    automatic = true;
    options = "--delete-older-than 5d";
    dates = "Sun 19:00";
  };
  nix.settings.auto-optimise-store = true;

  system.stateVersion = "22.11";
}
