vim.wo.number=true
vim.cmd [[set mouse=a]]
vim.cmd [[set noswapfile]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[set title]]
vim.cmd [[set nowrap]]

vim.cmd[[colorscheme carbon]]

-- phpactor
-- use fzf within the list
vim.g.phpactorInputListStrategy = 'phpactor#input#list#fzf'

-- vim tests
vim.cmd([[ let test#strategy = "floaterm" ]])


-- Show branch in the lightline (statusbar)
vim.g.lightline = {
  colorscheme = 'rosepine',
  active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
  component_function = { gitbranch = 'gitbranch#name' },
}

-- use <Return> key to select from autocomplete list
vim.cmd([[
	inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
]])	
