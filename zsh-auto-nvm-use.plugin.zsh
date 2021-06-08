autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default) && -f package.json && -r package.json ]]; then
    echo "No nvmrc detected. You may want to revert to nvm default version."
    #nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
