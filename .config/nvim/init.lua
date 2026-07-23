local config_path = vim.fn.stdpath("config")
package.path = package.path .. ";" .. config_path .. "/?.lua;" .. config_path .. "/?/init.lua"

require("core.options")
require("core.keymaps")
require("core.plugins")
require("core.autocmd")

require("plugins.lsp")
require("plugins.markdown")
-- require("plugins.treesitter") -- Was commented: possible past problems w this.
require("plugins.telescope")
require("plugins.cmp")
require("plugins.fugitive")
require("plugins.theme")
require("plugins.harpoon")
-- require("plugins.copilotchat")
-- require("plugins.sidekick")
require("plugins.codecompanion")
require("plugins.mason")
require("plugins.surround")
require("plugins.dap")
require("plugins.latex")
require("plugins.oil")
