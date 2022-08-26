require('base')
require('packer-plugins')
require('mappings')

require("nvim-tree").setup()

vim.cmd[[colorscheme gruvbox]]

-- phpactor
-- use fzf within the list
vim.g.phpactorInputListStrategy = 'phpactor#input#list#fzf'


-- Show branch in the lightline (statusbar)
vim.g.lightline = {
  colorscheme = 'seoul256',
  active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
  component_function = { gitbranch = 'gitbranch#name' },
}