{
  home = {
    file.".config/picom/picom.conf".source = ./picom.conf;
    file.".config/alacritty/alacritty.yml".source = ./alacritty.yml;
    file.".gitconfig".source = ./.gitconfig;
    file.".xinitrc".source = ./.xinitrc;
    file.".zshrc".source = ./.zshrc;
    file.".tmux.conf".source = ./.tmux.conf;
    file.".tmux.conf.local".source = ./.tmux.conf.local;

    stateVersion = "18.09";
  };
}
