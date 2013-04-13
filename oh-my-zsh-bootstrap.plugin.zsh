_load_bootstrap() {
  export ZSH_BOOTSTRAP=$1
  source $ZSH_BOOTSTRAP/lib/map.zsh
  source $ZSH_BOOTSTRAP/lib/repository.zsh
  source $ZSH_BOOTSTRAP/lib/download.zsh
}

[[ -f $ZSH_CUSTOM/plugins/oh-my-zsh-bootstrap/oh-my-zsh-bootstrap.plugin.zsh ]] && _load_bootstrap $ZSH_CUSTOM/plugins/oh-my-zsh-bootstrap
[[ -f $ZSH/plugins/oh-my-zsh-bootstrap/oh-my-zsh-bootstrap.plugin.zsh ]] && _load_bootstrap $ZSH/plugins/oh-my-zsh-bootstrap

alias list_plugins="_list_plugins|less"
