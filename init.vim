if exists('g:vscode')
else
  source $HOME/.config/nvim/general/plugins.vim
  source $HOME/.config/nvim/general/settings.vim
  lua require('init')
end
