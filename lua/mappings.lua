-- set ladder key
vim.g.maplocalleader = ","
vim.g.mapleader = ","

local keymap = vim.keymap

-- Sourcing
keymap.set('n','<leader>ev', ':tabedit $MYVIMRC<CR>')
keymap.set('n','<leader>ee', ':source $MYVIMRC<CR>')

-- Tree
keymap.set('n','<leader>1',':NvimTreeToggle<Return>')

-- Splits
keymap.set('n', 'ss', ':split<Return><C-w><C-j>')
keymap.set('n', 'vv', ':vsplit<Return><C-w><C-l>')
-- Managing splits
keymap.set('n', '<C-k>', ':resize -5<CR>')
keymap.set('n', '<C-j>', ':resize +5<CR>')
keymap.set('n', '<C-l>', ':vertical resize +5<CR>')
keymap.set('n', '<C-h>', ':vertical resize -5<CR>')

-- Fzf
keymap.set('n', '<leader>p', ':FzfLua files<CR>')
keymap.set('n', '<leader>b', ':FzfLua buffers<CR>')
keymap.set('n', '<leader>r', ':RgFzf<CR>')

-- Tabs
keymap.set('n', '<C-n>', ':tabn<CR>')
keymap.set('n', '<C-x>', ':tabc<CR>')
keymap.set('n', '<C-t>', ':tabnew<CR>')

-- Toggle terminal
keymap.set('n', '<leader>.', ':FloatermToggle<CR>')

-- PhpActor
keymap.set('n', '<C-]>', ':PhpactorGotoDefinition<CR>')
keymap.set('n', '<C-B>', ':PhpactorContextMenu<CR>')

-- Run tests
keymap.set('n', '<leader>t', ':TestFile --testdox<CR>')
keymap.set('n', '<leader>a', ':TestSuite --testdox<CR>')
keymap.set('n', '<leader>c', ':TestNearest --testdox<CR>')

-- Autoimport
keymap.set('n', '<leader>u', ':PhpactorImportClass<CR>')

-- File methods
keymap.set('n', '<leader>o', ':CtrlPFunky<CR>')
