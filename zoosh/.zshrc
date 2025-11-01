export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

export PATH="/Applications/Ghostty.app/Contents/MacOS:$PATH"

# [Browser-sync]
alias bsync='browser-sync start --server --files "*.html, *.css, *.js"'

#[Navigation]
alias ls='lsd --tree --depth 1'

# [Config files]
alias nv-config='nvim ~/.config/nvim/lua/plugins/init.lua'
alias zoosh='nvim ~/.zshrc'
alias skhd-config='nvim ~/.config/skhd/skhdrc'
alias tmux-config='nvim ~/.config/tmux/.tmux.conf'
alias yabai-config='nvim ~/.config/yabai/yabairc'

alias restart='yabai --restart-service skhd --restart-service'
alias **='exit'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:$HOME/.local/opt/go/bin
export PATH=$PATH:$HOME/go/bin

# bun completions
[ -s "/Users/natha/.bun/_bun" ] && source "/Users/natha/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
