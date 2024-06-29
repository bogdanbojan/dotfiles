-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/bbojan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/bbojan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/bbojan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/bbojan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bbojan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ReplaceWithRegister = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/ReplaceWithRegister",
    url = "https://github.com/vim-scripts/ReplaceWithRegister"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  conjure = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/conjure",
    url = "https://github.com/Olical/conjure"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/git-messenger.vim",
    url = "https://github.com/rhysd/git-messenger.vim"
  },
  harpoon = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2¶\2\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\3\0005\3\4\0=\3\5\2=\2\a\1B\0\2\1K\0\1\0\14fast_wrap\1\0\0\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\n\14after_key\6l\bmap\n<M-e>\14highlight\vSearch\fpattern\21[%'%\"%>%]%)%}%,]\fend_key\6$\22cursor_pos_before\2\19highlight_grey\fComment\15before_key\6h\20manual_position\2\tkeys\31qwertyuiopzxcvbnmasdfghjkl\nsetup\19nvim-autopairs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-go"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/nvim-dap-go",
    url = "https://github.com/leoluz/nvim-dap-go"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-nio"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/nvim-nio",
    url = "https://github.com/nvim-neotest/nvim-nio"
  },
  ["nvim-parinfer"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/nvim-parinfer",
    url = "https://github.com/gpanders/nvim-parinfer"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    config = { "\27LJ\2\2ı<\0\0\5\0’\1\0ó\0026\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0014\2\0\0=\2\6\0015\2\a\0005\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2=\2\18\0014\2\0\0=\2\19\0015\2\20\0=\2\21\0015\2\23\0005\3\22\0=\3\24\2=\2\25\0015\2\27\0005\3\26\0=\3\24\2=\2\28\0015\2\29\0=\2\30\0015\2\31\0=\2 \0015\2P\0005\3\"\0005\4!\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4\n\0035\4+\0=\4\f\0035\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\0035\4<\0=\4=\0035\4>\0=\4?\0035\4@\0=\4A\0035\4B\0=\4C\0035\4D\0=\4E\0035\4F\0=\4G\0035\4H\0=\4I\0035\4J\0=\4K\0035\4L\0=\4M\0035\4N\0=\4O\3=\3Q\0025\3S\0005\4R\0=\4\14\0035\4T\0=\4\16\0035\4U\0=\4V\0035\4W\0=\4X\0035\4Y\0=\4Z\0035\4[\0=\4\\\0035\4]\0=\4^\0035\4_\0=\4`\0035\4a\0=\4b\0035\4c\0=\4#\0035\4d\0=\4%\0035\4e\0=\4'\0035\4f\0=\4)\0035\4g\0=\4\n\0035\4h\0=\4\f\0035\4i\0=\4j\0035\4k\0=\4-\0035\4l\0=\4/\0035\4m\0=\0041\0035\4n\0=\0043\0035\4o\0=\0045\0035\4p\0=\0047\0035\4q\0=\0049\0035\4r\0=\4;\0035\4s\0=\4=\0035\4t\0=\4?\0035\4u\0=\4A\0035\4v\0=\4C\0035\4w\0=\4E\0035\4x\0=\4G\0035\4y\0=\4I\0035\4z\0=\4K\0035\4{\0=\4M\0035\4|\0=\4O\0035\4}\0=\4~\0035\4\127\0=\4Ä\3=\3Å\0025\3É\0005\4Ç\0=\0047\0035\4Ñ\0=\0049\0035\4Ö\0=\4Ü\0035\4á\0=\4;\0035\4à\0=\4=\0035\4â\0=\4?\0035\4ä\0=\4ã\0035\4å\0=\4ç\0035\4é\0=\4è\0035\4ê\0=\4ë\0035\4í\0=\4ì\0035\4î\0=\4A\0035\4ï\0=\4C\0035\4ñ\0=\4E\0035\4ó\0=\4G\0035\4ò\0=\4I\0035\4ô\0=\4K\0035\4ö\0=\4M\0035\4õ\0=\4O\3=\3ú\0025\3û\0005\4ù\0=\4ü\0035\4†\0=\4°\0035\4¢\0=\4£\0035\4§\0=\4ì\3=\3•\0025\3ß\0005\4¶\0=\4®\0035\4©\0=\4™\0035\4´\0=\4¨\0035\4≠\0=\4Æ\0035\4Ø\0=\4∞\0035\4±\0=\4≤\0035\4≥\0=\4¥\0035\4µ\0=\4∂\0035\4∑\0=\4ã\0035\4∏\0=\4ç\0035\4π\0=\4è\0035\4∫\0=\4ë\0035\4ª\0=\4ì\0035\4º\0=\4Ω\0035\4æ\0=\4j\3=\3ø\0025\3¡\0005\4¿\0=\4®\0035\4¬\0=\4™\0035\4√\0=\4ƒ\0035\4≈\0=\4∆\0035\4«\0=\4»\0035\4…\0=\4 \0035\4À\0=\4∞\0035\4Ã\0=\4≤\0035\4Õ\0=\4ã\0035\4Œ\0=\4ç\0035\4œ\0=\4è\0035\4–\0=\4ë\0035\4—\0=\4ì\0035\4“\0=\4Ω\3=\3\30\2=\2\17\0015\2”\0=\2‘\1B\0\2\1K\0\1\0\27suppress_missing_scope\1\0\1\16projects_v2\2\1\0\2\tdesc\31toggle viewer viewed state\blhs\20<leader><space>\1\0\2\tdesc\21close review tab\blhs\n<C-c>\1\0\2\tdesc\30move to last changed file\blhs\a]Q\1\0\2\tdesc\31move to first changed file\blhs\a[Q\1\0\2\tdesc\30move to next changed file\blhs\a[q\1\0\2\tdesc\"move to previous changed file\blhs\a]q\1\0\2\tdesc\"hide/show changed files panel\blhs\14<leader>b\1\0\2\tdesc%move focus to changed file panel\blhs\14<leader>e\18refresh_files\1\0\2\tdesc refresh changed files panel\blhs\6R\17select_entry\1\0\2\tdesc%show selected changed file diffs\blhs\t<cr>\15prev_entry\1\0\2\tdesc\"move to previous changed file\blhs\6k\15next_entry\1\0\2\tdesc\30move to next changed file\blhs\6j\1\0\2\tdesc\19discard review\blhs\15<leader>vd\1\0\0\1\0\2\tdesc\18submit review\blhs\15<leader>vs\16review_diff\1\0\2\tdesc\15go to file\blhs\agf\18toggle_viewed\1\0\2\tdesc\31toggle viewer viewed state\blhs\20<leader><space>\1\0\2\tdesc\21close review tab\blhs\n<C-c>\1\0\2\tdesc\30move to last changed file\blhs\a]Q\1\0\2\tdesc\31move to first changed file\blhs\a[Q\1\0\2\tdesc\30move to next changed file\blhs\a[q\1\0\2\tdesc\"move to previous changed file\blhs\a]q\16prev_thread\1\0\2\tdesc\28move to previous thread\blhs\a[t\16next_thread\1\0\2\tdesc\24move to next thread\blhs\a]t\17toggle_files\1\0\2\tdesc\"hide/show changed files panel\blhs\14<leader>b\16focus_files\1\0\2\tdesc%move focus to changed file panel\blhs\14<leader>e\26add_review_suggestion\1\0\2\tdesc add a new review suggestion\blhs\14<space>sa\23add_review_comment\1\0\2\tdesc\29add a new review comment\blhs\14<space>ca\19discard_review\1\0\2\tdesc\19discard review\blhs\15<leader>vd\18submit_review\1\0\0\1\0\2\tdesc\18submit review\blhs\15<leader>vs\15submit_win\1\0\2\tdesc\21close review tab\blhs\n<C-c>\20request_changes\1\0\2\tdesc\27request changes review\blhs\n<C-r>\19comment_review\1\0\2\tdesc\19comment review\blhs\n<C-m>\19approve_review\1\0\0\1\0\2\tdesc\19approve review\blhs\n<C-a>\18review_thread\1\0\2\tdesc\29add/remove üòï reaction\blhs\14<space>rc\1\0\2\tdesc\29add/remove üòÑ reaction\blhs\14<space>rl\1\0\2\tdesc\29add/remove üöÄ reaction\blhs\14<space>rr\1\0\2\tdesc\29add/remove üëé reaction\blhs\14<space>r-\1\0\2\tdesc\29add/remove üëç reaction\blhs\14<space>r+\1\0\2\tdesc\29add/remove üëÄ reaction\blhs\14<space>re\1\0\2\tdesc\31add/remove ‚ù§Ô∏è reaction\blhs\14<space>rh\1\0\2\tdesc\29add/remove üéâ reaction\blhs\14<space>rp\21close_review_tab\1\0\2\tdesc\21close review tab\blhs\n<C-c>\22select_last_entry\1\0\2\tdesc\30move to last changed file\blhs\a]Q\23select_first_entry\1\0\2\tdesc\31move to first changed file\blhs\a[Q\22select_prev_entry\1\0\2\tdesc\30move to next changed file\blhs\a[q\22select_next_entry\1\0\2\tdesc\"move to previous changed file\blhs\a]q\1\0\2\tdesc\27go to previous comment\blhs\a[c\1\0\2\tdesc\23go to next comment\blhs\a]c\1\0\2\tdesc\19delete comment\blhs\14<space>cd\19add_suggestion\1\0\2\tdesc\19add suggestion\blhs\14<space>sa\1\0\2\tdesc\16add comment\blhs\14<space>ca\1\0\0\1\0\2\tdesc#navigate to a local repo issue\blhs\14<space>gi\17pull_request\18review_resume\1\0\2\tdesc/resume a pending review for the current PR\blhs\14<space>vr\17review_start\1\0\2\tdesc&start a review for the current PR\blhs\14<space>vs\1\0\2\tdesc\29add/remove üòï reaction\blhs\14<space>rc\1\0\2\tdesc\29add/remove üòÑ reaction\blhs\14<space>rl\1\0\2\tdesc\29add/remove üöÄ reaction\blhs\14<space>rr\1\0\2\tdesc\29add/remove üëé reaction\blhs\14<space>r-\1\0\2\tdesc\29add/remove üëç reaction\blhs\14<space>r+\1\0\2\tdesc\29add/remove üëÄ reaction\blhs\14<space>re\1\0\2\tdesc\31add/remove ‚ù§Ô∏è reaction\blhs\14<space>rh\1\0\2\tdesc\29add/remove üéâ reaction\blhs\14<space>rp\1\0\2\tdesc\27go to previous comment\blhs\a[c\1\0\2\tdesc\23go to next comment\blhs\a]c\1\0\2\tdesc\19delete comment\blhs\14<space>cd\1\0\2\tdesc\16add comment\blhs\14<space>ca\1\0\2\tdesc#navigate to a local repo issue\blhs\14<space>gi\1\0\2\tdesc\17remove label\blhs\14<space>ld\1\0\2\tdesc\14add label\blhs\14<space>la\1\0\2\tdesc\17create label\blhs\14<space>lc\1\0\2\tdesc\20remove assignee\blhs\14<space>ad\1\0\2\tdesc\17add assignee\blhs\14<space>aa\14goto_file\1\0\2\tdesc\15go to file\blhs\agf\1\0\2\tdesc!copy url to system clipboard\blhs\n<C-y>\1\0\2\tdesc\23open PR in browser\blhs\n<C-b>\1\0\2\tdesc\14reload PR\blhs\n<C-r>\1\0\2\tdesc\"list open issues on same repo\blhs\14<space>il\1\0\2\tdesc\14reopen PR\blhs\14<space>io\1\0\2\tdesc\rclose PR\blhs\14<space>ic\20remove_reviewer\1\0\2\tdesc\28remove reviewer request\blhs\14<space>vd\17add_reviewer\1\0\2\tdesc\17add reviewer\blhs\14<space>va\17show_pr_diff\1\0\2\tdesc\17show PR diff\blhs\14<space>pd\23list_changed_files\1\0\2\tdesc\26list PR changed files\blhs\14<space>pf\17list_commits\1\0\2\tdesc\20list PR commits\blhs\14<space>pc\24rebase_and_merge_pr\1\0\2\tdesc\24rebase and merge PR\blhs\15<space>prm\24squash_and_merge_pr\1\0\2\tdesc\24squash and merge PR\blhs\15<space>psm\1\0\2\tdesc\20merge commit PR\blhs\14<space>pm\1\0\0\1\0\2\tdesc\16checkout PR\blhs\14<space>po\nissue\1\0\0\19react_confused\1\0\2\tdesc\29add/remove üòï reaction\blhs\14<space>rc\16react_laugh\1\0\2\tdesc\29add/remove üòÑ reaction\blhs\14<space>rl\17react_rocket\1\0\2\tdesc\29add/remove üöÄ reaction\blhs\14<space>rr\22react_thumbs_down\1\0\2\tdesc\29add/remove üëé reaction\blhs\14<space>r-\20react_thumbs_up\1\0\2\tdesc\29add/remove üëç reaction\blhs\14<space>r+\15react_eyes\1\0\2\tdesc\29add/remove üëÄ reaction\blhs\14<space>re\16react_heart\1\0\2\tdesc\31add/remove ‚ù§Ô∏è reaction\blhs\14<space>rh\17react_hooray\1\0\2\tdesc\29add/remove üéâ reaction\blhs\14<space>rp\17prev_comment\1\0\2\tdesc\27go to previous comment\blhs\a[c\17next_comment\1\0\2\tdesc\23go to next comment\blhs\a]c\19delete_comment\1\0\2\tdesc\19delete comment\blhs\14<space>cd\16add_comment\1\0\2\tdesc\16add comment\blhs\14<space>ca\15goto_issue\1\0\2\tdesc#navigate to a local repo issue\blhs\14<space>gi\17remove_label\1\0\2\tdesc\17remove label\blhs\14<space>ld\14add_label\1\0\2\tdesc\14add label\blhs\14<space>la\17create_label\1\0\2\tdesc\17create label\blhs\14<space>lc\20remove_assignee\1\0\2\tdesc\20remove assignee\blhs\14<space>ad\17add_assignee\1\0\2\tdesc\17add assignee\blhs\14<space>aa\1\0\2\tdesc!copy url to system clipboard\blhs\n<C-y>\1\0\2\tdesc\26open issue in browser\blhs\n<C-b>\vreload\1\0\2\tdesc\17reload issue\blhs\n<C-r>\16list_issues\1\0\2\tdesc\"list open issues on same repo\blhs\14<space>il\17reopen_issue\1\0\2\tdesc\17reopen issue\blhs\14<space>io\16close_issue\1\0\0\1\0\2\tdesc\16close issue\blhs\14<space>ic\vcolors\1\0\f\tblue\f#58A6FF\rdark_red\f#da3633\tgrey\f#2A354C\vyellow\f#d3c846\ngreen\f#acf2bd\16dark_yellow\f#735c0f\nblack\f#000000\14dark_blue\f#0366d6\bred\f#fdb8c0\15dark_green\f#238636\vpurple\f#6f42c1\nwhite\f#ffffff\15file_panel\1\0\2\14use_icons\2\tsize\3\n\18pull_requests\1\0\1#always_select_remote_on_create\1\1\0\2\14direction\tDESC\nfield\15CREATED_AT\vissues\rorder_by\1\0\0\1\0\2\14direction\tDESC\nfield\15CREATED_AT\aui\1\0\2\19use_signcolumn\1\19use_signstatus\2\vgh_env\18picker_config\rmappings\rmerge_pr\1\0\2\tdesc\23merge pull request\blhs\n<C-r>\16checkout_pr\1\0\2\tdesc\26checkout pull request\blhs\n<C-o>\rcopy_url\1\0\2\tdesc!copy url to system clipboard\blhs\n<C-y>\20open_in_browser\1\0\0\1\0\2\tdesc\26open issue in browser\blhs\n<C-b>\1\0\1\15use_emojis\1\16ssh_aliases\19default_remote\1\3\0\0\rupstream\vorigin\1\0\19\19enable_builtin\1\17comment_icon\b‚ñé\vgh_cmd\agh\20timeline_marker\tÔë† \ftimeout\3à'\26left_bubble_delimiter\bÓÇ∂\30reaction_viewer_hint_icon\tÔëÑ \26snippet_context_lines\3\4\18outdated_icon\nÛ∞Öí \18resolved_icon\tÔÄå \14user_icon\tÔäΩ \20github_hostname\5\25default_merge_method\vcommit\29mappings_disable_default\1\27right_bubble_delimiter\bÓÇ¥\vpicker\14telescope\20timeline_indent\0062\27default_to_projects_v2\1\17use_local_fs\1\nsetup\tocto\frequire\0" },
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/octo.nvim",
    url = "https://github.com/pwntester/octo.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  solarized = {
    config = { "\27LJ\2\2‘\1\0\0\3\0\f\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\0016\0\4\0009\0\5\0'\1\6\0B\0\2\0016\0\4\0009\0\a\0005\1\t\0005\2\n\0=\2\v\1=\1\b\0K\0\1\0\14component\1\0\1\rfilename\a%F\1\0\1\16colorscheme\14solarized\14lightline\6g\26colorscheme solarized\bcmd\bvim\1\0\1\fpalette\14solarized\nsetup\14solarized\frequire\0" },
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/solarized",
    url = "https://github.com/maxmx03/solarized.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-helm"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/vim-helm",
    url = "https://github.com/towolf/vim-helm"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-racket"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/vim-racket",
    url = "https://github.com/wlangstroth/vim-racket"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/bbojan/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\2=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: octo.nvim
time([[Config for octo.nvim]], true)
try_loadstring("\27LJ\2\2ı<\0\0\5\0’\1\0ó\0026\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0014\2\0\0=\2\6\0015\2\a\0005\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2=\2\18\0014\2\0\0=\2\19\0015\2\20\0=\2\21\0015\2\23\0005\3\22\0=\3\24\2=\2\25\0015\2\27\0005\3\26\0=\3\24\2=\2\28\0015\2\29\0=\2\30\0015\2\31\0=\2 \0015\2P\0005\3\"\0005\4!\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4\n\0035\4+\0=\4\f\0035\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\0035\4<\0=\4=\0035\4>\0=\4?\0035\4@\0=\4A\0035\4B\0=\4C\0035\4D\0=\4E\0035\4F\0=\4G\0035\4H\0=\4I\0035\4J\0=\4K\0035\4L\0=\4M\0035\4N\0=\4O\3=\3Q\0025\3S\0005\4R\0=\4\14\0035\4T\0=\4\16\0035\4U\0=\4V\0035\4W\0=\4X\0035\4Y\0=\4Z\0035\4[\0=\4\\\0035\4]\0=\4^\0035\4_\0=\4`\0035\4a\0=\4b\0035\4c\0=\4#\0035\4d\0=\4%\0035\4e\0=\4'\0035\4f\0=\4)\0035\4g\0=\4\n\0035\4h\0=\4\f\0035\4i\0=\4j\0035\4k\0=\4-\0035\4l\0=\4/\0035\4m\0=\0041\0035\4n\0=\0043\0035\4o\0=\0045\0035\4p\0=\0047\0035\4q\0=\0049\0035\4r\0=\4;\0035\4s\0=\4=\0035\4t\0=\4?\0035\4u\0=\4A\0035\4v\0=\4C\0035\4w\0=\4E\0035\4x\0=\4G\0035\4y\0=\4I\0035\4z\0=\4K\0035\4{\0=\4M\0035\4|\0=\4O\0035\4}\0=\4~\0035\4\127\0=\4Ä\3=\3Å\0025\3É\0005\4Ç\0=\0047\0035\4Ñ\0=\0049\0035\4Ö\0=\4Ü\0035\4á\0=\4;\0035\4à\0=\4=\0035\4â\0=\4?\0035\4ä\0=\4ã\0035\4å\0=\4ç\0035\4é\0=\4è\0035\4ê\0=\4ë\0035\4í\0=\4ì\0035\4î\0=\4A\0035\4ï\0=\4C\0035\4ñ\0=\4E\0035\4ó\0=\4G\0035\4ò\0=\4I\0035\4ô\0=\4K\0035\4ö\0=\4M\0035\4õ\0=\4O\3=\3ú\0025\3û\0005\4ù\0=\4ü\0035\4†\0=\4°\0035\4¢\0=\4£\0035\4§\0=\4ì\3=\3•\0025\3ß\0005\4¶\0=\4®\0035\4©\0=\4™\0035\4´\0=\4¨\0035\4≠\0=\4Æ\0035\4Ø\0=\4∞\0035\4±\0=\4≤\0035\4≥\0=\4¥\0035\4µ\0=\4∂\0035\4∑\0=\4ã\0035\4∏\0=\4ç\0035\4π\0=\4è\0035\4∫\0=\4ë\0035\4ª\0=\4ì\0035\4º\0=\4Ω\0035\4æ\0=\4j\3=\3ø\0025\3¡\0005\4¿\0=\4®\0035\4¬\0=\4™\0035\4√\0=\4ƒ\0035\4≈\0=\4∆\0035\4«\0=\4»\0035\4…\0=\4 \0035\4À\0=\4∞\0035\4Ã\0=\4≤\0035\4Õ\0=\4ã\0035\4Œ\0=\4ç\0035\4œ\0=\4è\0035\4–\0=\4ë\0035\4—\0=\4ì\0035\4“\0=\4Ω\3=\3\30\2=\2\17\0015\2”\0=\2‘\1B\0\2\1K\0\1\0\27suppress_missing_scope\1\0\1\16projects_v2\2\1\0\2\tdesc\31toggle viewer viewed state\blhs\20<leader><space>\1\0\2\tdesc\21close review tab\blhs\n<C-c>\1\0\2\tdesc\30move to last changed file\blhs\a]Q\1\0\2\tdesc\31move to first changed file\blhs\a[Q\1\0\2\tdesc\30move to next changed file\blhs\a[q\1\0\2\tdesc\"move to previous changed file\blhs\a]q\1\0\2\tdesc\"hide/show changed files panel\blhs\14<leader>b\1\0\2\tdesc%move focus to changed file panel\blhs\14<leader>e\18refresh_files\1\0\2\tdesc refresh changed files panel\blhs\6R\17select_entry\1\0\2\tdesc%show selected changed file diffs\blhs\t<cr>\15prev_entry\1\0\2\tdesc\"move to previous changed file\blhs\6k\15next_entry\1\0\2\tdesc\30move to next changed file\blhs\6j\1\0\2\tdesc\19discard review\blhs\15<leader>vd\1\0\0\1\0\2\tdesc\18submit review\blhs\15<leader>vs\16review_diff\1\0\2\tdesc\15go to file\blhs\agf\18toggle_viewed\1\0\2\tdesc\31toggle viewer viewed state\blhs\20<leader><space>\1\0\2\tdesc\21close review tab\blhs\n<C-c>\1\0\2\tdesc\30move to last changed file\blhs\a]Q\1\0\2\tdesc\31move to first changed file\blhs\a[Q\1\0\2\tdesc\30move to next changed file\blhs\a[q\1\0\2\tdesc\"move to previous changed file\blhs\a]q\16prev_thread\1\0\2\tdesc\28move to previous thread\blhs\a[t\16next_thread\1\0\2\tdesc\24move to next thread\blhs\a]t\17toggle_files\1\0\2\tdesc\"hide/show changed files panel\blhs\14<leader>b\16focus_files\1\0\2\tdesc%move focus to changed file panel\blhs\14<leader>e\26add_review_suggestion\1\0\2\tdesc add a new review suggestion\blhs\14<space>sa\23add_review_comment\1\0\2\tdesc\29add a new review comment\blhs\14<space>ca\19discard_review\1\0\2\tdesc\19discard review\blhs\15<leader>vd\18submit_review\1\0\0\1\0\2\tdesc\18submit review\blhs\15<leader>vs\15submit_win\1\0\2\tdesc\21close review tab\blhs\n<C-c>\20request_changes\1\0\2\tdesc\27request changes review\blhs\n<C-r>\19comment_review\1\0\2\tdesc\19comment review\blhs\n<C-m>\19approve_review\1\0\0\1\0\2\tdesc\19approve review\blhs\n<C-a>\18review_thread\1\0\2\tdesc\29add/remove üòï reaction\blhs\14<space>rc\1\0\2\tdesc\29add/remove üòÑ reaction\blhs\14<space>rl\1\0\2\tdesc\29add/remove üöÄ reaction\blhs\14<space>rr\1\0\2\tdesc\29add/remove üëé reaction\blhs\14<space>r-\1\0\2\tdesc\29add/remove üëç reaction\blhs\14<space>r+\1\0\2\tdesc\29add/remove üëÄ reaction\blhs\14<space>re\1\0\2\tdesc\31add/remove ‚ù§Ô∏è reaction\blhs\14<space>rh\1\0\2\tdesc\29add/remove üéâ reaction\blhs\14<space>rp\21close_review_tab\1\0\2\tdesc\21close review tab\blhs\n<C-c>\22select_last_entry\1\0\2\tdesc\30move to last changed file\blhs\a]Q\23select_first_entry\1\0\2\tdesc\31move to first changed file\blhs\a[Q\22select_prev_entry\1\0\2\tdesc\30move to next changed file\blhs\a[q\22select_next_entry\1\0\2\tdesc\"move to previous changed file\blhs\a]q\1\0\2\tdesc\27go to previous comment\blhs\a[c\1\0\2\tdesc\23go to next comment\blhs\a]c\1\0\2\tdesc\19delete comment\blhs\14<space>cd\19add_suggestion\1\0\2\tdesc\19add suggestion\blhs\14<space>sa\1\0\2\tdesc\16add comment\blhs\14<space>ca\1\0\0\1\0\2\tdesc#navigate to a local repo issue\blhs\14<space>gi\17pull_request\18review_resume\1\0\2\tdesc/resume a pending review for the current PR\blhs\14<space>vr\17review_start\1\0\2\tdesc&start a review for the current PR\blhs\14<space>vs\1\0\2\tdesc\29add/remove üòï reaction\blhs\14<space>rc\1\0\2\tdesc\29add/remove üòÑ reaction\blhs\14<space>rl\1\0\2\tdesc\29add/remove üöÄ reaction\blhs\14<space>rr\1\0\2\tdesc\29add/remove üëé reaction\blhs\14<space>r-\1\0\2\tdesc\29add/remove üëç reaction\blhs\14<space>r+\1\0\2\tdesc\29add/remove üëÄ reaction\blhs\14<space>re\1\0\2\tdesc\31add/remove ‚ù§Ô∏è reaction\blhs\14<space>rh\1\0\2\tdesc\29add/remove üéâ reaction\blhs\14<space>rp\1\0\2\tdesc\27go to previous comment\blhs\a[c\1\0\2\tdesc\23go to next comment\blhs\a]c\1\0\2\tdesc\19delete comment\blhs\14<space>cd\1\0\2\tdesc\16add comment\blhs\14<space>ca\1\0\2\tdesc#navigate to a local repo issue\blhs\14<space>gi\1\0\2\tdesc\17remove label\blhs\14<space>ld\1\0\2\tdesc\14add label\blhs\14<space>la\1\0\2\tdesc\17create label\blhs\14<space>lc\1\0\2\tdesc\20remove assignee\blhs\14<space>ad\1\0\2\tdesc\17add assignee\blhs\14<space>aa\14goto_file\1\0\2\tdesc\15go to file\blhs\agf\1\0\2\tdesc!copy url to system clipboard\blhs\n<C-y>\1\0\2\tdesc\23open PR in browser\blhs\n<C-b>\1\0\2\tdesc\14reload PR\blhs\n<C-r>\1\0\2\tdesc\"list open issues on same repo\blhs\14<space>il\1\0\2\tdesc\14reopen PR\blhs\14<space>io\1\0\2\tdesc\rclose PR\blhs\14<space>ic\20remove_reviewer\1\0\2\tdesc\28remove reviewer request\blhs\14<space>vd\17add_reviewer\1\0\2\tdesc\17add reviewer\blhs\14<space>va\17show_pr_diff\1\0\2\tdesc\17show PR diff\blhs\14<space>pd\23list_changed_files\1\0\2\tdesc\26list PR changed files\blhs\14<space>pf\17list_commits\1\0\2\tdesc\20list PR commits\blhs\14<space>pc\24rebase_and_merge_pr\1\0\2\tdesc\24rebase and merge PR\blhs\15<space>prm\24squash_and_merge_pr\1\0\2\tdesc\24squash and merge PR\blhs\15<space>psm\1\0\2\tdesc\20merge commit PR\blhs\14<space>pm\1\0\0\1\0\2\tdesc\16checkout PR\blhs\14<space>po\nissue\1\0\0\19react_confused\1\0\2\tdesc\29add/remove üòï reaction\blhs\14<space>rc\16react_laugh\1\0\2\tdesc\29add/remove üòÑ reaction\blhs\14<space>rl\17react_rocket\1\0\2\tdesc\29add/remove üöÄ reaction\blhs\14<space>rr\22react_thumbs_down\1\0\2\tdesc\29add/remove üëé reaction\blhs\14<space>r-\20react_thumbs_up\1\0\2\tdesc\29add/remove üëç reaction\blhs\14<space>r+\15react_eyes\1\0\2\tdesc\29add/remove üëÄ reaction\blhs\14<space>re\16react_heart\1\0\2\tdesc\31add/remove ‚ù§Ô∏è reaction\blhs\14<space>rh\17react_hooray\1\0\2\tdesc\29add/remove üéâ reaction\blhs\14<space>rp\17prev_comment\1\0\2\tdesc\27go to previous comment\blhs\a[c\17next_comment\1\0\2\tdesc\23go to next comment\blhs\a]c\19delete_comment\1\0\2\tdesc\19delete comment\blhs\14<space>cd\16add_comment\1\0\2\tdesc\16add comment\blhs\14<space>ca\15goto_issue\1\0\2\tdesc#navigate to a local repo issue\blhs\14<space>gi\17remove_label\1\0\2\tdesc\17remove label\blhs\14<space>ld\14add_label\1\0\2\tdesc\14add label\blhs\14<space>la\17create_label\1\0\2\tdesc\17create label\blhs\14<space>lc\20remove_assignee\1\0\2\tdesc\20remove assignee\blhs\14<space>ad\17add_assignee\1\0\2\tdesc\17add assignee\blhs\14<space>aa\1\0\2\tdesc!copy url to system clipboard\blhs\n<C-y>\1\0\2\tdesc\26open issue in browser\blhs\n<C-b>\vreload\1\0\2\tdesc\17reload issue\blhs\n<C-r>\16list_issues\1\0\2\tdesc\"list open issues on same repo\blhs\14<space>il\17reopen_issue\1\0\2\tdesc\17reopen issue\blhs\14<space>io\16close_issue\1\0\0\1\0\2\tdesc\16close issue\blhs\14<space>ic\vcolors\1\0\f\tblue\f#58A6FF\rdark_red\f#da3633\tgrey\f#2A354C\vyellow\f#d3c846\ngreen\f#acf2bd\16dark_yellow\f#735c0f\nblack\f#000000\14dark_blue\f#0366d6\bred\f#fdb8c0\15dark_green\f#238636\vpurple\f#6f42c1\nwhite\f#ffffff\15file_panel\1\0\2\14use_icons\2\tsize\3\n\18pull_requests\1\0\1#always_select_remote_on_create\1\1\0\2\14direction\tDESC\nfield\15CREATED_AT\vissues\rorder_by\1\0\0\1\0\2\14direction\tDESC\nfield\15CREATED_AT\aui\1\0\2\19use_signcolumn\1\19use_signstatus\2\vgh_env\18picker_config\rmappings\rmerge_pr\1\0\2\tdesc\23merge pull request\blhs\n<C-r>\16checkout_pr\1\0\2\tdesc\26checkout pull request\blhs\n<C-o>\rcopy_url\1\0\2\tdesc!copy url to system clipboard\blhs\n<C-y>\20open_in_browser\1\0\0\1\0\2\tdesc\26open issue in browser\blhs\n<C-b>\1\0\1\15use_emojis\1\16ssh_aliases\19default_remote\1\3\0\0\rupstream\vorigin\1\0\19\19enable_builtin\1\17comment_icon\b‚ñé\vgh_cmd\agh\20timeline_marker\tÔë† \ftimeout\3à'\26left_bubble_delimiter\bÓÇ∂\30reaction_viewer_hint_icon\tÔëÑ \26snippet_context_lines\3\4\18outdated_icon\nÛ∞Öí \18resolved_icon\tÔÄå \14user_icon\tÔäΩ \20github_hostname\5\25default_merge_method\vcommit\29mappings_disable_default\1\27right_bubble_delimiter\bÓÇ¥\vpicker\14telescope\20timeline_indent\0062\27default_to_projects_v2\1\17use_local_fs\1\nsetup\tocto\frequire\0", "config", "octo.nvim")
time([[Config for octo.nvim]], false)
-- Config for: solarized
time([[Config for solarized]], true)
try_loadstring("\27LJ\2\2‘\1\0\0\3\0\f\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\0016\0\4\0009\0\5\0'\1\6\0B\0\2\0016\0\4\0009\0\a\0005\1\t\0005\2\n\0=\2\v\1=\1\b\0K\0\1\0\14component\1\0\1\rfilename\a%F\1\0\1\16colorscheme\14solarized\14lightline\6g\26colorscheme solarized\bcmd\bvim\1\0\1\fpalette\14solarized\nsetup\14solarized\frequire\0", "config", "solarized")
time([[Config for solarized]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-autopairs'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
