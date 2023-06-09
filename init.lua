-- nvim
-- |--lua/
-- |    |-- config/
-- |    |      |--lualine.lua
-- |    |      |--telescope.lua
-- |    |-- base.lua
-- |    |-- keymaps.lua
-- |    |-- lazy_nvim.lua
-- |    |-- plugin.lua
-- |-- init.lua
-- |-- lazy-lock.json
--
require("base")
require("keymaps")
require("lazy_nvim")

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
