export ZSH="$HOME/.oh-my-zsh"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=blue'

ZSH_THEME="robbyrussell"
plugins=(git sudo pip docker zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh



source ~/.bash_aliases

# zsh-autosuggestions mapping
# ALT+a to accept completion
bindkey '^[a' autosuggest-accept
# ALT+e to accept and execute
bindkey '^[e' autosuggest-execute
# End of lines added by compinstall

PATH="/home/choungion/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/choungion/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/choungion/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/choungion/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/choungion/perl5"; export PERL_MM_OPT;

alias dotfiles='/usr/bin/git --git-dir=$HOME/.Arch-Dotfiles-Git/.git/ --work-tree=$HOME'
alias update-dotfiles='dotfiles commit -am "Update" && dotfiles push -u origin main'
