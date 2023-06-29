{
  home = {
    file."plumbing".source = ./plumbing;
    file.".Xresources".source = ./.Xresources;
    file.".config/sxhkd/sxhkdrc".source = ./sxhkdrc;
    file.".gitconfig".source = ./.gitconfig;
    file.".xinitrc".source = ./.xinitrc;
    file.".zshrc".source = ./.zshrc;
    file.".tmux.conf".source = ./.tmux.conf;
    file.".tmux.conf.local".source = ./.tmux.conf.local;

    stateVersion = "18.09";
  };
}
