# Theme
#ZSH_THEME=af-magic

# Aliases
alias port-8080="lsof -n -i4TCP:8080"
alias reload-profile="source ~/.zshrc"
alias edit-profile="vi ~/.zshrc"
alias ls="ls -GF"
alias la="ls -lhAGF"
alias cd..="cd ../"
alias ..="cd ../"
alias ...="cd ../../"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' git:%b'

# Load colors
autoload -U colors && colors

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%{$fg[cyan]%}%(5~|…/%3~|%~)%{$reset_color%}%{$fg[green]%}${vcs_info_msg_0_}%{$reset_color%} %{$fg[yellow]%}»%{$reset_color%} '
