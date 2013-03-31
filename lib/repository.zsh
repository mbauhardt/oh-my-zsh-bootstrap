_init_plugins() {
  local plugin_path=$1
  for plugin ($plugin_path/*); do
    local plugin_name=$(basename $plugin)
    _map_exists plugins $plugin_name
    [[ $? -ne 0 ]] && _map_put plugins $plugin_name disabled
  done
}

_pre_enable_plugins() {
  for plugin ($plugins); do
    _map_put plugins $plugin pre_enabled
  done
}

list_plugins() {
  for plugin ($(_map_keys plugins)); do
    local enabled=$(_map_get plugins $plugin)
    if [[ $enabled = "pre_enabled" || $enabled = "enabled" ]]; then
      printf "%-30s \033[0;32m%-10s\033[0m\n" $plugin $enabled
    else
      printf "%-30s \033[0;30m%-10s\033[0m\n" $plugin $enabled
    fi 
  done
}

list_enabled_plugins() {
  for plugin ($(_map_keys plugins)); do
    local enabled=$(_map_get plugins $plugin)
    [[ $enabled = "enabled" ]] && echo $plugin
  done
}

enable_plugin() {
  [[ "$#" != 1 ]] && return 1
  local plugin=$1
  local enabled=$(_map_get plugins $plugin)
  [[ $enabled = "disabled" ]] && _map_put plugins $plugin enabled
}

disable_plugin() {
  [[ "$#" != 1 ]] && return 1
  local plugin=$1
  local enabled=$(_map_get plugins $plugin)
  [[ $enabled = "enabled" ]] && _map_put plugins $plugin disabled
}

_populate_enabled_plugins() {
  for plugin ($(list_enabled_plugins)); do
    if [[ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]]; then
      fpath=($ZSH/plugins/$plugin $fpath)
      source $ZSH/plugins/$plugin/$plugin.plugin.zsh
    elif [[ -f $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh ]]; then
      path=($ZSH_CUSTOM/plugins/$plugin $fpath)
      source $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
    fi
  done
}

_init_plugins $ZSH/plugins
_init_plugins $ZSH_CUSTOM/plugins
_pre_enable_plugins
_populate_enabled_plugins
