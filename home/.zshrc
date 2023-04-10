export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c"
export LC_CTYPE=zh_CN.UTF-8

eval "$(starship init zsh)"
eval "$(zoxide   init zsh)"
eval "$(mcfly    init zsh)"

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    tmux attach || tmux >/dev/null 2>&1
fi
