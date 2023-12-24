return {
	-- Git related plugins
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',

	-- Detect tabstop and shiftwidth automatically
	'tpope/vim-sleuth',
	-- Use Lap to autoformat buffer on save
	require("overlrd.autoformat"),
	-- autoclose pairs
	{
		'm4xshen/autoclose.nvim',
		opts = {}
	},

	{
		-- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			{
				'j-hui/fidget.nvim',
				opts = {
					notification = {
						window = {
							winblend = 0
						}

					}
				}
			},

			-- Additional lua configuration, makes nvim stuff amazing!
			'folke/neodev.nvim',
		},
	},
	{

		-- jdtls
		'mfussenegger/nvim-jdtls'
	},
	{

		-- Autocompletion
		'hrsh7th/nvim-cmp',
		dependencies = {
			-- Snippet Engine & its associated nvim-cmp source
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',

			-- Adds LSP completion capabilities
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',

			-- Adds a number of user-friendly snippets
			'rafamadriz/friendly-snippets',
		},
	},
	{
		-- Adds git related signs to the gutter,
		'lewis6991/gitsigns.nvim',
		opts = {
			-- See `:help gitsigns.txt`
			signs = {
				add = { text = '+' },
				change = { text = '~' },
				delete = { text = '_' },
				topdelete = { text = '‾' },
				changedelete = { text = '~' },
			},
		}
	},
	{
		-- fuzzy finder
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{
		-- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate',
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "c", "lua", "javascript", "python", "java" },
				sync_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	},

	-- rose pine colorscheme
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		config = function() vim.cmd.colorscheme 'rose-pine' end,
		opts = {
			disable_background = true
		}
	}

}
