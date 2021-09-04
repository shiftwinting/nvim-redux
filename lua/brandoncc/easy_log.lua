vim.g.easy_log_map_key = ",el"
vim.g.easy_log_map_key = ",el"
vim.g.easy_log_upper_configuration_map = ",eL"
vim.g.easy_log_type_map_key=',etl'
vim.g.easy_log_type_upper_map_key=',etL'

vim.g.easy_log_log_map={
  ruby = { 'puts "', ': #{', '}"' },
  lua = { 'print("', ':", ', ')' },
  javascriptreact = { 'console.log("', '", ', ')' },
  typescriptreact = { 'console.log("', '", ', ')' },
}

vim.g.easy_log_type_map= {
  ruby = { 'puts "', '.class: " + ', '.class.to_s' },
  lua = { 'print("type(', '):", type(', '))' },
  javascriptreact = { 'console.log("', ': ", Object.prototype.toString.call(', '))' },
  typescriptreact = { 'console.log("', ': ", Object.prototype.toString.call(', '))' }
}
