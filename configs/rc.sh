export PATH="$HOME/.local/bin:$PATH"
export EDITOR=vim

export npm_config_prefix="$HOME/.local"

alias  mini='flef'

function google () {
  w3m "https://lite.duckduckgo.com/lite/?q=$(echo "$@" | sed 's/\s/+/g')"
}
