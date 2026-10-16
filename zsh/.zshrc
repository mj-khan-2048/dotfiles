# Powerlevel10k instant prompt (must stay at the very top) 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH 
typeset -U path PATH
path=("$HOME/.local/bin" $path)

# History 
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# Completion 
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# Keybindings 
bindkey "\e[1;5C" forward-word    # Ctrl+Right
bindkey "\e[1;5D" backward-word   # Ctrl+Left
bindkey "\e[H"    beginning-of-line  # Home
bindkey "\e[F"    end-of-line        # End
bindkey "\e[3~"   delete-char        # Delete

# Plugins & theme 
for plugin in \
    zsh-autosuggestions/zsh-autosuggestions.zsh \
    fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh \
    powerlevel10k/powerlevel10k.zsh-theme
do
    [[ -f ~/.zsh/custom/plugins/$plugin ]] && source ~/.zsh/custom/plugins/$plugin
done

# Tools (only if installed) 
(( $+commands[zoxide] )) && eval "$(zoxide init zsh --cmd z)"
(( $+commands[eza] )) && alias ls='eza --icons=auto'

# Prompt config (run `p10k configure` to change) 
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
