return require('packer').startup(function ()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- floating terminal
  	use 'voldikss/vim-floaterm'

  	-- Copilot
  	use {"github/copilot.vim"}
  	-- Copilot with cmp
  	use {
	  "zbirenbaum/copilot.lua",
	  event = {"VimEnter"},
	  config = function()
	    vim.defer_fn(function()
	      require("copilot").setup()
	    end, 100)
	  end,
	}
	use {
	  "zbirenbaum/copilot-cmp",
	  module = "copilot_cmp",
	}

	-- code completion
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}

	-- status bar
	use 'itchyny/lightline.vim'

	-- display git branch in status bar
	use 'itchyny/vim-gitbranch'

	-- run project tests
	use 'vim-test/vim-test'

	-- better php syntax
	use 'StanAngeloff/php.vim'

	-- phpactor
	use 'phpactor/phpactor'
	use({
	  "gbprod/phpactor.nvim",
	  requires = {
	    "nvim-lua/plenary.nvim", -- required to update phpactor
	    "neovim/nvim-lspconfig" -- required to automaticly register lsp serveur
	  },
	  config = function()
	    require("phpactor").setup({
	      install = {
		    path = vim.fn.stdpath("data") .. "/opt/",
		    branch = "master",
		    bin = "/usr/local/bin/phpactor",
		    php_bin = "php",
		    composer_bin = "composer",
		    git_bin = "git",
		    check_on_startup = "none",
		  }
	    })
	  end
	})

	-- Tree
	use {
	  'kyazdani42/nvim-tree.lua',
	  requires = {
	    'kyazdani42/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}


	-- fzf
	use 'junegunn/fzf'
	
	use { 'ibhagwan/fzf-lua',
	  -- optional for icon support
	  requires = { 'kyazdani42/nvim-web-devicons' }
	}

	-- Themes
	use 'gruvbox-community/gruvbox'
	use 'projekt0n/github-nvim-theme'

end)