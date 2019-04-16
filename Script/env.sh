#!/bin/sh
SOCIALST="$HOME/Socialst"
AXECT="https://github.com/Axect"

# Socialst
if [ ! -d "$SOCIALST" ]; then
  cd $HOME
  git clone "${AXECT}/Socialst"
fi

# zshrc
echo "What kinds of zsh do you want to use?"
echo "1. Custom zsh, 2. oh-my-zsh"

read choose_zsh

if [ $choose_zsh -eq 1 ]; then
    if [ ! -d "$HOME/.zshrc" ]; then
        echo "Create .zshrc file"
    elif [ -d "$HOME/.zshrc" ]; then
        echo "Backup original .zshrc to .zshrc.old"
        mv $HOME/.zshrc $HOME/.zshrc.old
    fi
    ln -s $SOCIALST/Zsh/.zshrc $HOME/.zshrc
    chsh -s `which zsh`
    echo "Complete zsh Setup!"
elif [ $choose_zsh -eq 2 ]; then
    if [ -d "$HOME/.zshrc" ]; then
        echo "Backup original .zshrc to .zshrc.old"
        mv $HOME/.zshrc $HOME/.zshrc.old
    fi
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ln -s $SOCIALST/Zsh/ohmyzshrc $HOME/.zshrc
    echo "Complete zsh Setup!"
fi

# Spacevim
echo "What kinds of vim do you want to use?"
echo "1. Vim, 2. Spacevim"

read vim

if [ $vim -eq 2 ]; then
    if [ ! -d "$HOME/.SpaceVim" ]; then
        curl -sLf https://spacevim.org/install.sh | bash
        mkdir $HOME/.SpaceVim.d
        ln -s $SOCIALST/SpaceVim/init.toml $HOME/.SpaceVim.d/init.toml
        echo "Complete spacevim Setup!"
    fi
elif [ $vim -eq 1 ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ln -s $SOCIALST/Vim/.vimrc $HOME/.vimrc
    echo "Complete vim setup!"
fi

# tmux
#if [ ! -d "$HOME/.tmux.conf.local" ]; then
#  cd $HOME
#  git clone https://github.com/gpakosz/.tmux.git
#  ln -s -f .tmux/.tmux.conf
#  ln -s $SOCIALST/Tmux/.tmux.conf.local $HOME/.tmux.conf.local
#  echo "Complete tmux Setup!"
#fi

# Eisvogel
if [ ! -d "$HOME/.pandoc" ]; then
  mkdir -p $HOME/.pandoc/templates
  ln -s $SOCIALST/Pandoc/eisvogel.latex $HOME/.pandoc/templates/eisvogel.latex
  echo "Complete Eisvogel Setup!"
fi

# Zathura
if [ ! -d "$HOME/.config/zathura" ]; then
  mkdir -p "$HOME/.config/zathura"
  ln -s $SOCIALST/Zathura/zathurarc $HOME/.config/zathura/zathurarc
fi

# Code
if [ ! -d "$HOME/.config/Code" ]; then
  mkdir -p "$HOME/.config/Code"
fi

if [ ! -d "$HOME/.config/Code/User/snippets/" ]; then
  mkdir -p "$HOME/.config/Code/User/snippets"
fi

if [ ! -d "$HOME/.config/Code/User/snippets/socialst.code-snippets" ]; then
  ln -s $SOCIALST/Code/socialst.code-snippets $HOME/.config/Code/User/snippets/socialst.code-snippets
fi

# Xprofile
echo "What kinds of input method do you want to use?"
echo "1. ibus, 2. uim"

read input_method

if [ $input_method -eq 1 ]; then
    if [ ! -d "$HOME/.xprofile" ]; then
        ln -s $SOCIALST/IBUS/xprofile $HOME/.xprofile
    fi
elif [ $input_method -eq 2 ]; then
    if [ ! -d "$HOME/.xprofile" ]; then
        ln -s $SOCIASLT/UIM/xprofile $HOME/.xprofile
    fi
fi
