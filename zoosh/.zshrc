# --- Java ---
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export PATH=$JAVA_HOME/bin:$PATH

# --- Ghostty ---
export PATH="/Applications/Ghostty.app/Contents/MacOS:$PATH"

# --- NVM (Node.js) ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# The bash_completion line is not needed for zsh and can be removed
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# --- Bun ---
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# --- Completion system (must run before anything calls compdef) ---
autoload -Uz compinit && compinit

[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun" # bun completions

# --- Bison --- 
export PATH="$(brew --prefix bison)/bin:$PATH"


#
# --- ALIASES ---
#

# [Browser-sync]
alias bsync='browser-sync start --server --files "*.html, *.css, *.js"'

# [Navigation]
# This alias will only work if you have 'lsd' installed (e.g., via brew install lsd)
alias ls='lsd --tree --depth 1'

# [Config files]
alias nv-config='nvim ~/.config/nvim/lua/plugins/init.lua'
alias zoosh='nvim ~/.zshrc'
alias skhd-config='nvim ~/.config/skhd/skhdrc'
alias tmux-config='nvim ~/.config/tmux/.tmux.conf'
alias p='python3'
alias ojt='g++-15 -std=gnu++23 -O2 -o solution solution.cpp && oj test -c "./solution" -d test/'

#
# --- SHELL INIT (MUST BE AT THE END) ---
#
eval "$(starship init zsh)"
eval "$(omp completions zsh)"
eval "$(zoxide init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

# Created by `pipx` on 2026-05-11 03:57:39
export PATH="$PATH:/Users/root1/.local/bin"
