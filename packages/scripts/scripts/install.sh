#!/bin/sh

# Install Options
for i in "$@"; do
    case "$i" in
       -s|--skip-apps)
            skip_apps=1
            shift ;;
        *) ;;
    esac
done



# Install Homebrew
if [ ! -f /usr/local/bin/brew ]; then
    echo "install homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# Install apps
if [ ! "$skip_apps" ]; then
    echo 'Install apps'
    brew bundle -v --file=~/dotfiles/Brewfile
fi


# Link Dotfiles
echo 'Link Dotfiles'

if [ ! -d ~/dotfiles ]; then
    cd ~
    echo "create dotfiles directory."
    mkdir dotfiles
    cd ~/dotfiles
    git clone https://github.com/kmrmjr/dotfiles.git
fi

if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

STOW_PACKAGES_PATH=~/dotfiles/packages
stow --ignore=DS_Store -v -d $STOW_PACKAGES_PATH -t ~ $(ls $STOW_PACKAGES_PATH)

# Install vimplug
if [ ! -d ~/.vim/autoload ]; then
    cd ~/.vim
    echo "create dotfiles directory."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install packer.nvim
if [ ! -d ~/.local/share/nvim/site/pack/packer/opt ]; then
  git clone https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
done

# asdf Install Script
for plugin in $(awk '{print $1}' ~/.tool-versions); do
    if ! [ -d ~/.asdf/plugins/"$plugin" ]; then
        asdf plugin add "$plugin"
    fi
done



is_runtime_versions_changed () {
    plugin="$1"
    specified=$(grep "$plugin" ~/.tool-versions | awk '{$1=""; print $0}')
    installed=$(asdf list "$plugin" 2>&1)

    is_changed=
    for version in $specified; do
        match=$(echo "$installed" | grep "$version")
        [ -z "$match" ] && is_changed=1
    done

    [ "$is_changed" ]
}

for plugin in $(asdf plugin list); do
    if is_runtime_versions_changed "$plugin"; then

        echo "Install runtime: $plugin"
        asdf install "$plugin"
    fi
done
