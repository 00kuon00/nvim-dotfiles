return {
    { -- colorscheme
       'blueshirts/darcula',
        config = function()
            vim.cmd([[colorscheme lunaperche]])
        end
    },

    {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    },

    { -- add comment with keystroke
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
          vim.api.nvim_set_keymap('n', '<C-_>', 'gcc', {})
          vim.api.nvim_set_keymap('v', '<C-_>', 'gc', {})
      end
    },

    { -- telescope
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
          require('config/telescope')
      end
    },

    { -- telescope-file-browser
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },

    { -- telekasten
        'renerocksai/telekasten.nvim',
        dependencies = {'nvim-telescope/telescope.nvim'}
      },

    -- ファイラー
    { 'lambdalisue/fern.vim' },

    -- help in JP
    { 'vim-jp/vimdoc-ja' },

    { -- lualine
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('config/lualine')
        end
    },
}
