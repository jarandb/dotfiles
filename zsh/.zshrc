# --------------------------------------------------
# Oh My Zsh
# --------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"

# Plugins (loaded before oh-my-zsh sourcing)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# --------------------------------------------------
# Prompt — Starship
# --------------------------------------------------
eval "$(starship init zsh)"

# --------------------------------------------------
# Shell plugins
# --------------------------------------------------
# zsh-autosuggestions (fish-like suggestions as you type)
if [ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# zsh-syntax-highlighting (colors valid/invalid commands)
if [ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# --------------------------------------------------
# Tools
# --------------------------------------------------
# Zoxide (smarter cd)
eval "$(zoxide init zsh)"

# NVM (installed via curl, not brew)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Auto-switch node version when entering a directory with .nvmrc
autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path="$(nvm_find_nvmrc)"
  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# --------------------------------------------------
# Aliases — Git
# --------------------------------------------------
alias gs="git status"
alias gc="git commit"
alias gca="git commit --amend"
alias gco="git checkout"
alias gb="git branch"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gl="git log --oneline --graph --decorate -20"
alias gd="git diff"
alias gds="git diff --staged"
alias grb="git rebase"

# --------------------------------------------------
# Aliases — npm
# --------------------------------------------------
alias ni="npm install"
alias nr="npm run"
alias nd="npm run dev"
alias nb="npm run build"
alias nt="npm run test"
alias nl="npm run lint"

# --------------------------------------------------
# Aliases — pnpm
# --------------------------------------------------
alias pn="pnpm"
alias pni="pnpm install"
alias pnr="pnpm run"
alias pnd="pnpm dev"

# --------------------------------------------------
# Aliases — yarn
# --------------------------------------------------
alias ya="yarn add"
alias yr="yarn run"
alias yd="yarn dev"

# --------------------------------------------------
# Aliases — General
# --------------------------------------------------
alias c="clear"
alias v="nvim"
alias vim="nvim"
alias ls="ls --color=auto"
alias ll="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias cat="cat -n"

# --------------------------------------------------
# PATH
# --------------------------------------------------
export PATH="$HOME/.local/bin:$PATH"

# Added by Antigravity
export PATH="/Users/yesrduck/.antigravity/antigravity/bin:$PATH"
