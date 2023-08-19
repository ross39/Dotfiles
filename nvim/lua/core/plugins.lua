local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'github/copilot.vim'
  use 'ryanoasis/vim-devicons'
  use 'sainnhe/gruvbox-material'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'navarasu/onedark.nvim'
  use {
    'wthollingsworth/pomodoro.nvim',
    requires = 'MunifTanjim/nui.nvim',
    config = function()
        require('pomodoro').setup({
            time_work = 90,
            time_break_short = 7,
            time_break_long = 20,
            timers_to_long_break = 2
        })
    end
}
  use 'f-person/git-blame.nvim'

  use {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		opts = {}
		-- Other blankline configuration here
		require("indent_blankline").setup(require("indent-rainbowline").make_opts(opts))
	end,
	requires = {
		"TheGLander/indent-rainbowline.nvim",
	},
}

  use {'nvim-orgmode/orgmode', config = function()
  require('orgmode').setup{}
    end
  }

  use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }
  use 'romgrk/barbar.nvim'
  use {
    "akinsho/toggleterm.nvim", tag = '*', config = function()
     require("toggleterm").setup()
    end
  }
  use 'nvim-treesitter/nvim-treesitter'
  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
	
  	}
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }  
  use { "catppuccin/nvim", as = "catppuccin" }

  use 'CRAG666/code_runner.nvim'

  use { 'neoclide/coc.nvim', branch='release' }
  use 'lervag/vimtex'
  use 'xiyaowong/transparent.nvim'

  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
}

  use {
  'pwntester/octo.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function ()
    require"octo".setup()
  end
}
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
