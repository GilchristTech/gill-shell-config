#!/bin/zsh -e

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
POWERLEVEL10K_DIR="${ZSH_CUSTOM}/themes/powerlevel10k"

# Install Powerlevel10k, if not installed
#
if [[ -d "${POWERLEVEL10K_DIR}" ]] ; then
    echo "Powerlevel10k already installed"
else
    echo 'Installing Powerlevel10k...'
    echo "> git" clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${POWERLEVEL10K_DIR}"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${POWERLEVEL10K_DIR}"
fi

# Download fonts, if not downloaded
#
echo 'Downloading Powerlevel10k fonts (MesloLGS)...'
FONTS_DIR="${HOME}/.fonts"
mkdir -p "${FONTS_DIR}"
wget -nc --directory-prefix="${FONTS_DIR}/"                                                       \
    'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'       \
    'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf'          \
    'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf'        \
    'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf' \


# Update zshrc, unless it mentions the zsh-theme file. Starting a
# new shell will present the user with the p10k configuration
#
if grep "powerlevel10k.zsh-theme" ~/.zshrc ; then
    echo "Powerlevel10k already configured"
else
    echo "Updating ~/.zshrc"
    echo source \""${POWERLEVEL10K_DIR}"/powerlevel10k.zsh-theme\" >>~/.zshrc
fi
