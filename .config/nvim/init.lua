local config_path = vim.fn.stdpath("config")
package.path = package.path .. ";" .. config_path .. "/?.lua;" .. config_path .. "/?/init.lua"

require("core.options")
require("core.keymaps")
require("core.plugins")
require("core.autocmd")

require("plugins.lsp")
require("plugins.treesitter")
require("plugins.telescope")
require("plugins.cmp")
require("plugins.fugitive")
require("plugins.theme")
require("plugins.harpoon")
require("plugins.copilotchat")
require("plugins.mason")
require("plugins.surround")
