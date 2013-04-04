#!/bin/zsh

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

if [[ -d $HOME/.oh-my-zsh/custom/plugins/oh-my-zsh-bootstrap ]]; then
  echo "\033[0;33mYou already have Oh My Zsh Bootstrap installed.\033[0m You'll need to remove ~/.oh-my-zsh/custom/plugins/oh-my-zsh-bootstrap if you want to install"
  exit
fi

echo "\033[0;34mCloning Oh My Zsh Bootstrap...\033[0m"
hash git >/dev/null && /usr/bin/env git clone git://github.com/mbauhardt/oh-my-zsh-bootstrap.git $HOME/.oh-my-zsh/custom/plugins/oh-my-zsh-bootstrap || {
  echo "git not installed"
  exit
}

cp $HOME/.zshrc $HOME/.zshrc.sed
sed  's/plugins=(/plugins=(oh-my-zsh-bootstrap /g' $HOME/.zshrc.sed > $HOME/.zshrc
rm $HOME/.zshrc.sed

