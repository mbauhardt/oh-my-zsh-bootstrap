_load_bootstrap() {
  export ZSH_BOOTSTRAP=$1
  source $ZSH_BOOTSTRAP/lib/map.zsh
  source $ZSH_BOOTSTRAP/lib/repository.zsh
}

[[ -f $ZSH_CUSTOM/plugins/bootstrap/bootstrap.plugin.zsh ]] && _load_bootstrap $ZSH_CUSTOM/plugins/bootstrap
[[ -f $ZSH/plugins/bootstrap/bootstrap.plugin.zsh ]] && _load_bootstrap $ZSH/plugins/bootstrap

