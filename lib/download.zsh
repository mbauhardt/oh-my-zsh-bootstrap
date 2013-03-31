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
}