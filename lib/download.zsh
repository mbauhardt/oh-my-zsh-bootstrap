_clone_git() {
  local url=$1
  local folder=$2
  if [[ ! -d "$folder" ]]; then
    git clone $url $folder
  fi
}

download_plugin() {
  [[ "$#" != 2 ]] && return 1
  local url=$1; local name=$2;
  _clone_git $url $ZSH_CUSTOM/plugins/$name
  _map_put plugins $name enabled
}

download_theme() {
  [[ "$#" != 2 ]] && return 1
  local url=$1; local theme=$2;
  _clone_git $url $ZSH_CUSTOM/themes/$theme
  _map_put themes theme $theme
}
