local plugins = {
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
  },
 {
     "neovim/nvim-lspconfig",
       config = function()
       require("nvchad.configs.lspconfig").defaults()
       require "configs.lspconfig"
     end,
   },
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
    opts = {
      -- Your options go here
      -- name = "venv",
      -- auto_refresh = false
    },
    keys = {
      -- Keymap to open VenvSelector to pick a venv.
      { '<leader>vs', '<cmd>VenvSelect<cr>' },
      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
      { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
    }
  },
  {
   	"williamboman/mason.nvim",
   	opts = {
   		ensure_installed = {
        -- lua
   			"lua-language-server", "stylua",

        -- Front end
   			"html-lsp", "css-lsp" , 

        -- tools
        "prettier",
        "bash-language-server",
        "graphql-language-service-cli", 
        "json-lsp",
        "dockerfile-language-server", 


        -- languages
        "clangd",
        "java-language-server", 
        "python-lsp-server", 
        "sqlls", 
        "typescript-language-server", 
		},
	},
 },
   {
 	"nvim-treesitter/nvim-treesitter",
  	opts = {
   		ensure_installed = {
  			"vim", "lua", "vimdoc", "cpp", "java",
       "html", "css", "python", "tsx", "graphql", "bash",
        "csv", "dockerfile", 'javascript', "markdown", "markdown_inline", "python", "typescript"
   		},
  	},
   },
}


return plugins
