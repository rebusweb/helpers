alias ls="ls -GF"
alias la="ls -lhAGF"
alias reload_profile=". ~/.bash_profile"
alias sites="cd ~/Sites"
alias docs="cd ~/Documents"
alias apache_stop="sudo apachectl -k stop"
alias apache_start="sudo apachectl start"
export PATH="$HOME/.composer/vendor/bin:$PATH"
ngrokhost() {
  ~/Programs/ngrok http -host-header=$1 80
}
