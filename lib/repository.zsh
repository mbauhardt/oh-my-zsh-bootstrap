_init_plugins() {
  for plugin ($ZSH/plugins/*); do
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

enable_plugin() {
  [[ "$#" != 1 ]] && return 1
  local plugin=$1
  local enabled=$(_map_get plugins $plugin)
  [[ $enabled = "disabled" ]] && _map_put plugins $plugin enabled
}

_init_plugins
_pre_enable_plugins
