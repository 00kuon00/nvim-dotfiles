local actions = require('telescope.actions')

local function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions


require("telescope").setup {
    defaults = {
        mappings = {
            n = {
                ['q'] = actions.close
            }
        }
    },


  extensions = {
          
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
            ['<C-w>'] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = { 
          -- your custom normal mode mappings
           ['N'] = fb_actions.create,
           ['h'] = fb_actions.goto_parent_dir,
           ['/'] = function()
               vim.cmd('startinsert')
           end
        },
      },
    },
  },

}

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
