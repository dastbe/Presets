PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export CLICOLOR=1;
export LS_COLORS=exfxcxdxbxegedabagacad; # It is the default value on OSX, so this line can be omitted

autoload -Uz compinit
compinit
zstyle ':completion:*' list-colors 'exfxcxdxbxegedabagacad'

PROMPT=$'[%{\e[1;35m%}%n%{\e[0m%}]%# '
RPROMPT=$'[%m : %~]'

setopt    GLOB
setopt    EXTENDED_HISTORY
setopt    INC_APPEND_HISTORY
setopt    SHARE_HISTORY
setopt    HIST_IGNORE_DUPS
setopt    HIST_FIND_NO_DUPS
setopt    HIST_IGNORE_SPACE
setopt    HIST_VERIFY
setopt    NO_HIST_BEEP
setopt    NO_BEEP
setopt    NO_HUP
