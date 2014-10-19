## Autoload completions and prompts ##

# Extend completion path locally
fpath=(~/.zsh/functions $fpath) 

# Load everything
autoload -Uz compinit promptinit vcs_info colors
compinit
promptinit
colors

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats "%{$fg[blue]%}%b%{$reset_color%}"
precmd() {
   vcs_info
}

# Set prompt
setopt prompt_subst

PROMPT='[%{$fg[red]%}%n@%m%{$reset_color%} %{$fg[magenta]%}%~%{$reset_color%}]%# '
RPROMPT='${vcs_info_msg_0_}'

# Set ViM mode
bindkey -v

## Aliases ##

# Get to this file faster
alias zshrc='vi ~/.zshrc'

# ls
alias ls='ls -G'
alias l='ls -lFhG'
alias ll='ls -lG'

# tail
alias t='tail -f'

# Better grep
alias grep='grep --color'

# For faster cd navigation
alias -g ..='../'
alias -g ...='../../'
alias -g ....='../../../'
alias -g .....='../../../../'

# Copy as rsync
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

# Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set up Homebrew path
export PATH="/usr/local/bin:$PATH"

function gi() { curl http://www.gitignore.io/api/$@ ;}
