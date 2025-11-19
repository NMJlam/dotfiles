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
[ -s "/Users/natha/.bun/_bun" ] && source "/Users/natha/.bun/_bun" # bun completions

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

#
# --- SHELL INIT (MUST BE AT THE END) ---
#
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
