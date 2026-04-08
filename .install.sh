#!/usr/bin/env bash
# inspired by https://github.com/FelixKratz/dotfiles/blob/master/.install.sh
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🚀 Setting up your Mac..."

# --------------------------------------------------
# 1. Homebrew
# --------------------------------------------------
if ! command -v brew &>/dev/null; then
  echo "📦 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Add brew to PATH for Apple Silicon
  if [[ $(uname -m) == "arm64" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
else
  echo "✅ Homebrew already installed"
fi

# --------------------------------------------------
# 2. Homebrew packages (via Brewfile)
# --------------------------------------------------
echo "📦 Installing Homebrew packages..."
brew bundle --file="$DOTFILES_DIR/Brewfile"

# --------------------------------------------------
# 3. Oh My Zsh
# --------------------------------------------------
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "🐚 Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "✅ Oh My Zsh already installed"
fi

# --------------------------------------------------
# 4. NVM (installed via curl, not brew)
# --------------------------------------------------
if [ ! -d "$HOME/.nvm" ]; then
  echo "📦 Installing NVM..."
  export NVM_DIR="$HOME/.nvm"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
else
  echo "✅ NVM already installed"
fi

# --------------------------------------------------
# 5. Stow configs
# --------------------------------------------------
echo "🔗 Stowing configs..."
cd "$DOTFILES_DIR"

packages=(
  git
  nvim
  zsh
  starship
  ghostty
  spotify-player
)

for pkg in "${packages[@]}"; do
  if [ -d "$pkg" ]; then
    echo "  🔗 Stowing $pkg..."
    stow --restow --target="$HOME" "$pkg"
  else
    echo "  ⚠️  Skipping $pkg (directory not found)"
  fi
done

echo ""
echo "✅ All done! Restart your terminal to pick up the changes."
