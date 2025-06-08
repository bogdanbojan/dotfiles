--#C4B28A Helper function to turn most of the syntax groups off. Keeps comments and strings.
local function disable_syntax_highlighting()
    vim.api.nvim_set_hl(0, "Statement", { link = "Normal" })
    vim.api.nvim_set_hl(0, "Conditional", { link = "Normal" })
    vim.api.nvim_set_hl(0, "Keyword", { link = "Normal" })
    vim.api.nvim_set_hl(0, "Type", { link = "Normal" })
    vim.api.nvim_set_hl(0, "Special", { link = "Normal" })
    vim.api.nvim_set_hl(0, "gotype", { link = "Normal" })
    vim.api.nvim_set_hl(0, "goVar", { link = "Normal" })
    vim.api.nvim_set_hl(0, "goLabel", { link = "Normal" })
    vim.api.nvim_set_hl(0, "goDeclType", { link = "Normal" })
    vim.api.nvim_set_hl(0, "goPredefinedIdentifiers", { link = "Normal" })
end

local themes = {
    ["gruvbox-material-dark"] = {
        nvim = function()
            vim.g.gruvbox_material_enable_italic = 1
            vim.g.gruvbox_material_background = "hard" -- Default: medium.
            vim.g.gruvbox_material_foreground = "material"
            vim.o.background = "dark"

            vim.cmd('colorscheme gruvbox-material')
            vim.g.lightline = {
                colorscheme = 'gruvbox_material_dark_hard',
                component = {
                    filename = '%F'
                }
            }
            vim.api.nvim_set_hl(0, "Visual", { bg = "#e78a4e", fg = "#504945" })
            -- disable_syntax_highlighting()
            vim.api.nvim_set_hl(0, "Type", { link = "Normal" })
            vim.api.nvim_set_hl(0, "Special", { link = "Normal" })
        end,
        kitty = "gruvbox-material-dark-hard",
        tmux = "gruvbox-material-dark-hard"
    },

    ["gruvbox-material-light"] = {
        nvim = function()
            vim.g.gruvbox_material_background = "medium" -- Default: medium.
            vim.g.gruvbox_material_foreground = "mix"
            vim.o.background = "light"

            vim.cmd('colorscheme gruvbox-material')
            vim.g.lightline = {
                colorscheme = 'gruvbox_material',
                component = {
                    filename = '%F'
                }
            }
            disable_syntax_highlighting()
        end,
        kitty = "gruvbox-material-light-medium",
        tmux = "gruvbox-material-light-medium"
    },

    ["gruvbox-light"] = {
        nvim = function()
            vim.o.background = "light"
            vim.cmd('colorscheme gruvbox')
            vim.g.lightline = {
                colorscheme = 'gruvbox',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "gruvbox-light",
        tmux = "gruvbox-light",
    },

    ["gruvbox-dark"] = {
        nvim = function()
            vim.o.background = "dark"
            vim.cmd('colorscheme gruvbox')
            vim.g.lightline = {
                colorscheme = 'gruvbox',
                component = {
                    filename = '%F'
                }
            }
            -- vim.o.signcolumn = "no"
        end,
        kitty = "gruvbox-dark",
        tmux = "gruvbox-dark",
    },

    ["everforest"] = {
        nvim = function()
            vim.g.everforest_background = 'medium'
            vim.cmd('colorscheme everforest')
            -- Needs custom theme to work.
            vim.g.lightline = {
                colorscheme = 'everforest',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "everforest-medium"
    },

    ["solarized"] = {
        nvim = function()
            vim.cmd('colorscheme solarized')
            vim.cmd('set background=dark')
            vim.g.lightline = {
                colorscheme = 'solarized',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "solarized-dark"
    },

    -- TODO Implement this.
    ["nordic"] = {
        nvim = function()
            vim.cmd('colorscheme nordic')
            vim.cmd('set background=dark')
            vim.g.lightline = {
                colorscheme = 'nordic',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "nordic"
    },

    ["rose-pine"] = {
        nvim = function()
            vim.cmd('colorscheme rose-pine')
            vim.g.lightline = {
                colorscheme = 'rosepine',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "rose-pine-main",
        tmux = "rose-pine",
    },

    ["rose-pine-dawn"] = {
        nvim = function()
            vim.o.background = "light"
            vim.cmd('colorscheme rose-pine')
            vim.g.lightline = {
                colorscheme = 'rose-pine-dawn',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "rose-pine-dawn",
        -- tmux = "rose-pine-dawn",
    },

    ["iceberg"] = {
        nvim = function()
            vim.cmd('colorscheme iceberg')
            vim.g.lightline = {
                colorscheme = 'iceberg',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "iceberg",
        tmux = "iceberg_minimal2"
    },


    ["miasma"] = {
        nvim = function()
            vim.cmd('colorscheme miasma')
            vim.g.lightline = {
                colorscheme = 'miasma',
                component = {
                    filename = '%F'
                }
            }
            -- disable_syntax_highlighting()
        end,
        -- kitty = "miasma",
        -- tmux = "iceberg_minimal2"
    },

    ["kanagawa"] = {
        nvim = function()
            vim.cmd('colorscheme kanagawa-wave')
            vim.g.lightline = {
                colorscheme = 'kanagawa',
                component = {
                    filename = '%F'
                }
            }
            vim.api.nvim_set_hl(0, "Visual", { bg = "#C8C093", fg = "#16161D" })
        end,
        kitty = "kanagawa",
        tmux = "kanagawa-wave",
    },

    ["kanagawa-paper"] = {
        nvim = function()
            require("kanagawa-paper").setup({
                plugins = {
                    telescope = false,
                },
            })
            vim.cmd('colorscheme kanagawa-paper')
            vim.g.lightline = {
                colorscheme = 'kanagawa_paper',
                component = {
                    filename = '%F'
                }
            }
            vim.cmd('highlight! link @variable Normal')
            vim.api.nvim_set_hl(0, "Visual", { bg = "#C4B28A", fg = "#1F1F28" })
            vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "#54546d" })
            vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#54546d" })
        end,
        kitty = "kanagawa-paper",
        tmux = "kanagawa-paper",
    },

    ["neogotham"] = {
        nvim = function()
            vim.cmd('colorscheme neogotham')
            vim.g.lightline = {
                colorscheme = 'gotham',
                component = {
                    filename = '%F'
                }
            }

            vim.api.nvim_set_hl(0, '@constant', { fg = '#edb443' })                        -- Magenta for other constants.
            vim.api.nvim_set_hl(0, '@constant.builtin', { fg = '#d26937', italic = true }) -- Makes nil italic
            vim.api.nvim_set_hl(0, '@function.builtin', { link = '@function' })            -- Make append same as other functions.
            vim.api.nvim_set_hl(0, '@number', { fg = '#888ca6' })                          -- Change number color.
            vim.api.nvim_set_hl(0, '@type', { fg = '#d26937', italic = true })             -- Make types italic.

            vim.api.nvim_set_hl(0, '@module', { fg = '#99d1ce' })
            vim.api.nvim_set_hl(0, '@keyword', { fg = '#33859E' })
            vim.api.nvim_set_hl(0, '@string.escape', { fg = '#4d618e' })
        end,
        kitty = "gotham",
        tmux = "gotham",
    },

    ["zenbones"] = {
        nvim = function()
            vim.cmd('colorscheme zenbones')
            vim.o.background = "dark"
            vim.g.lightline = {
                colorscheme = 'zenbones',
                component = {
                    filename = '%F'
                }
            }
            vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#2E2927' })
            disable_syntax_highlighting()
        end,
        kitty = "zenbones-dark",
        tmux = "zenbones-dark",
    },

    ["rosebones"] = {
        nvim = function()
            vim.cmd('colorscheme rosebones')
            vim.o.background = "dark"
            vim.g.lightline = {
                colorscheme = 'rosebones',
                component = {
                    filename = '%F'
                }
            }
            vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#2A283A' })
            disable_syntax_highlighting()
        end,
        kitty = "rosebones-dark",
        tmux = "rosebones-dark",
    },

    ["zenburned"] = {
        nvim = function()
            vim.cmd('colorscheme zenburned')
            vim.o.background = "dark"
            vim.g.lightline = {
                colorscheme = 'zenburned',
                component = {
                    filename = '%F'
                }
            }
            vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#746956' })
        end,
        kitty = "zenburned",
        tmux = "zenburned",
    },


    ["zenbones-light"] = {
        nvim = function()
            vim.cmd('colorscheme zenbones')
            vim.o.background = "light"
            vim.g.lightline = {
                colorscheme = 'zenbones',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "zenbones-light",
        tmux = "zenbones-light",
    },

    ["darkearth"] = {
        nvim = function()
            vim.cmd('colorscheme darkearth')
            vim.g.lightline = {
                colorscheme = 'darkearth',
                component = {
                    filename = '%F'
                }
            }
            vim.api.nvim_set_hl(0, "Visual", { bg = "#C9A654", fg = "#24211E" })
            vim.api.nvim_set_hl(0, 'ColorColumn', { bg = "#484441" })
            vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#484441" })
            vim.api.nvim_set_hl(0, 'LineNr', { fg = '#5F865F' })
        end,
        kitty = "darkearth",
        tmux = "darkearth",
    },

    ["vim-gruvbit"] = {
        nvim = function()
            vim.cmd('colorscheme vim-gruvbit')
            vim.g.lightline = {
                colorscheme = 'vim-gruvbit',
                component = {
                    filename = '%F'
                }
            }
        end,
    },

    -- TODO Fix this
    ["moonshine"] = {
        nvim = function()
            vim.cmd('colorscheme moonshine_lowcontrast')
            vim.g.lightline = {
                colorscheme = 'moonshine',
                component = {
                    filename = '%F'
                }
            }
        end,
    },


    ["desert-night"] = {
        nvim = function()
            vim.cmd('colorscheme desert-night')
            vim.g.lightline = {
                colorscheme = 'desert_night',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "desert-night",
    },

    ["flexoki"] = {
        nvim = function()
            vim.cmd('colorscheme flexoki-light')
            vim.g.lightline = {
                colorscheme = 'flexoki_light',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "flexoki_light",
        tmux = "flexoki_light",
    },

    ["quiet"] = {
        nvim = function()
            vim.cmd('colorscheme quiet')
            vim.g.lightline = {
                colorscheme = 'quiet_dark',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "quiet-dark",
    },

    ["yorumi"] = {
        nvim = function()
            vim.cmd('colorscheme yorumi')
            vim.g.lightline = {
                colorscheme = 'yorumi',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "yorumi",
        tmux = "yorumi",
    },

    ["solarized-osaka"] = {
        nvim = function()
            vim.cmd('colorscheme solarized-osaka')
            vim.g.lightline = {
                colorscheme = 'solarized_osaka',
                component = {
                    filename = '%F'
                }
            }
            -- disable_syntax_highlighting()
            -- I don't want my windows to be dimmed:
            vim.api.nvim_set_hl(0, "NormalNC", { link = "Normal" })

            vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#002B36' })
            vim.api.nvim_set_hl(0, 'MatchParen', { fg = '#859900' })

            vim.api.nvim_set_hl(0, "Type", { link = "Normal" })
            vim.api.nvim_set_hl(0, "Special", { link = "Normal" })

            vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#073642' })
            vim.api.nvim_set_hl(0, 'LineNr', { fg = '#073642' })
            vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#073642' })
        end,
        kitty = "solarized-osaka_dark",
        tmux = "solarized-osaka_dark",
    },

    ["selenized"] = {
        nvim = function()
            vim.cmd('colorscheme selenized')
            vim.g.lightline = {
                colorscheme = 'selenized',
                component = {
                    filename = '%F'
                }
            }
        end,
    },

    ["menguless"] = {
        nvim = function()
            vim.cmd('colorscheme menguless')
            vim.g.lightline = {
                colorscheme = 'menguless',
                component = {
                    filename = '%F'
                }
            }
            vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#063a38' })
            vim.api.nvim_set_hl(0, 'MatchParen', { fg = '#969c46' })
            -- Remove underline in lightline when searching something with telescope.
            vim.api.nvim_set_hl(0, 'StatusLineNC', {})
        end,
        kitty = "menguless",
        tmux = "menguless",
    },

    ["alabaster"] = {
        nvim = function()
            vim.cmd('colorscheme alabaster')
            vim.g.lightline = {
                colorscheme = 'alabaster',
                component = {
                    filename = '%F'
                }
            }
            disable_syntax_highlighting()
        end,
        kitty = "alabaster",
        tmux = "alabaster",
    },

    ["candle"] = {
        nvim = function()
            vim.cmd('colorscheme candle')
        end,
    },

    ["chocolate"] = {
        nvim = function()
            vim.cmd('colorscheme chocolate')
        end,
    },

    ["coffee"] = {
        nvim = function()
            vim.cmd('colorscheme coffee')
            vim.g.lightline = {
                colorscheme = 'coffee',
                component = {
                    filename = '%F'
                }
            }
            vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#585858' })
        end,
        kitty = "coffee",
        tmux = "coffee",
    },

    ["acme"] = {
        nvim = function()
            vim.cmd('colorscheme acme')
            vim.g.acme_style = "plain"
            vim.g.lightline = {
                colorscheme = 'parchment',
                component = {
                    filename = '%F'
                }
            }

            -- Set all LSP Diagnostic colors to black
            local black = "#000000"

            vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultError", { fg = black })
            vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultWarning", { fg = black })
            vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultInformation", { fg = black })
            vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultHint", { fg = black })

            vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineError", { fg = black, undercurl = true })
            vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineWarning", { fg = black, undercurl = true })
            vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineInformation", { fg = black, undercurl = true })
            vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineHint", { fg = black, undercurl = true })

            -- (Optional) Override other related highlights
            vim.api.nvim_set_hl(0, "DiagnosticError", { fg = black })
            vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = black })
            vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = black })
            vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = black })

            vim.api.nvim_set_hl(0, "@variable", { fg = "#000000" })
            vim.api.nvim_set_hl(0, "IncSearch", { bg = "#cceeff" })

            -- These changes are for the PR diff.
            vim.api.nvim_set_hl(0, 'DiffChange', {
                fg = '#000000', -- Black text
                bg = '#eeeecc'  -- Your vscYellow/vscPopupHighlightGray color
            })

            vim.api.nvim_set_hl(0, 'DiffText', {
                fg = '#000000', -- Black text
                bg = '#cccc44', -- Your vscLightYellow color
            })

            vim.api.nvim_set_hl(0, 'Folded', { fg = '#000000', bg = '#eaffff' })
            vim.api.nvim_set_hl(0, 'QuickFixLine', { fg = '#000000', bg = '#cceeff' })
        end,
        kitty = "acme2",
        tmux = "parchment",
    },
}

-- Helper functions for file I/O
local function read_file(path)
    local file, err = io.open(path, "r")
    if not file then
        print("Error opening file:", path, err)
        return nil
    end
    local content = file:read("*all")
    file:close()
    return content
end

local function write_file(path, content)
    local file, err = io.open(path, "w")
    if not file then
        print("Error writing to file:", path, err)
        return false
    end
    file:write(content)
    file:close()
    return true
end

-- Function to switch TMux theme
local function switch_tmux_theme(theme_name)
    local tmux_config_path = os.getenv("HOME") .. "/.tmux.conf"
    local content = read_file(tmux_config_path)
    if not content then return end

    local new_theme_line = string.format('source-file ~/.tmux/%s.conf', theme_name)
    local new_content = content:gsub('source%-file %~/%.[%w/-]+%.conf', new_theme_line)

    if write_file(tmux_config_path, new_content) then
        os.execute("tmux source-file ~/.tmux.conf")
    end
end

-- Function to switch Kitty theme
local function switch_kitty_theme(theme_name)
    local kitty_config_path = os.getenv("HOME") .. "/.config/kitty/kitty.conf"
    local kitty_theme_line = "include themes/" .. theme_name .. ".conf"
    local content = read_file(kitty_config_path)
    if not content then return end

    local new_content, count = content:gsub("include themes/.-%.conf", kitty_theme_line)
    if count == 0 then
        new_content = content .. "\n" .. kitty_theme_line
    end

    if write_file(kitty_config_path, new_content) then
        os.execute("kill -SIGUSR1 $(pgrep kitty)")
    end
end

-- Main theme switcher
function Switch_theme(theme_name)
    local theme = themes[theme_name]
    if not theme then return end

    theme.nvim()
    vim.cmd('call lightline#enable()')
    -- This adds the normal bg to the float as well.
    vim.cmd('highlight! link FloatBorder Normal')
    vim.cmd('highlight! link NormalFloat Normal')
    vim.cmd('highlight! link Pmenu Normal')
    vim.cmd('highlight! link PmenuSel Visual')
    vim.cmd('highlight! link SnippetTabstop Normal')

    switch_kitty_theme(theme.kitty)
    if theme.tmux then
        switch_tmux_theme(theme.tmux)
    end
end

-- TODO Add color changes to:
--      - firefox
--      - k9s
--      - *obsidian
--      - *system

-- Create an initialization function
local function setup()
    vim.api.nvim_create_user_command("ThemeSwitch", function(opts)
        local theme_name = opts.args
        if themes[theme_name] then
            Switch_theme(theme_name)
        else
            print("Theme not found: " .. theme_name)
        end
    end, {
        nargs = 1,
        complete = function()
            return vim.tbl_keys(themes)
        end
    })

    -- Wait until plugins are loaded before setting the initial theme
    vim.api.nvim_create_autocmd("User", {
        pattern = "LazyVimStarted",
        callback = function()
            Switch_theme('gruvbox-light')
        end
    })
end

return {
    -- {
    --     'habamax/vim-gruvbit',
    --     name = 'vim-gruvbit',
    --     lazy = false,
    -- },
    -- {
    --     'karoliskoncevicius/moonshine-vim',
    --     name = 'moonshine',
    --     lazy = false,
    -- },
    {
        'kepano/flexoki-neovim',
        name = 'flexoki',
        lazy = false,
    },
    {
        'ptdewey/darkearth-nvim',
        name = 'darkearth',
        lazy = false,
    },
    {
        'coffee-theme/coffee.vim',
        name = 'coffee',
        lazy = false,
    },
    {
        'craftzdog/solarized-osaka.nvim',
        name = 'solarized-osaka',
        lazy = false,
    },
    {
        'xero/miasma.nvim',
        name = 'miasma',
        lazy = false,
    },
    {
        'zekzekus/menguless',
        name = 'menguless',
        lazy = false,
    },
    {
        'yorumicolors/yorumi.nvim',
        name = 'yorumi',
        lazy = false,
    },
    {
        'sainnhe/gruvbox-material',
        name = 'gruvbox-material',
        lazy = false,
    },
    {
        'https://gitlab.com/__tpb/acme.nvim',
        name = 'acme',
        lazy = false,
    },
    -- {
    --     'savq/miasma-nvim',
    --     name = 'miasma',
    --     lazy = false,
    -- },
    {
        'ellisonleao/gruvbox.nvim',
        name = 'gruvbox',
        lazy = false,
    },
    -- {
    --     'rose-pine/neovim',
    --     name = 'rose-pine',
    --     lazy = false,
    -- },
    {
        'cocopon/iceberg.vim',
        name = 'iceberg',
        lazy = false,
    },
    -- {
    --     'ishan9299/nvim-solarized-lua',
    --     name = 'solarized',
    --     lazy = false,
    -- },
    -- {
    --     'sainnhe/everforest',
    --     name = 'everforest',
    --     lazy = false,
    -- },
    {
        'zenbones-theme/zenbones.nvim',
        name = 'zenbones',
        dependencies = { 'rktjmp/lush.nvim' },
        lazy = false,
    },
    {
        'rebelot/kanagawa.nvim',
        name = 'kanagawa',
        lazy = false,
    },
    {
        'sho-87/kanagawa-paper.nvim',
        name = 'kanagawa-paper',
        lazy = false,
    },
    {
        'shmerl/neogotham',
        name = 'neogotham',
        lazy = false,
    },
    -- {
    --     'raphael-proust/vacme',
    --     name = 'vacme',
    --     lazy = false,
    -- },
    -- {
    --     'AlexvZyl/nordic.nvim',
    --     name = 'nordic',
    --     lazy = false,
    -- },
    {
        'p00f/alabaster.nvim',
        name = 'alabaster',
        lazy = false,
    },
    -- {
    --     'aditya-azad/candle-grey',
    --     name = 'candle',
    --     lazy = false,
    -- },
    -- {
    --     'https://gitlab.com/snakedye/chocolate.git',
    --     name = 'chocolate',
    --     lazy = false,
    -- },
    -- {
    --     'axgfn/parchment',
    --     name = 'parchment',
    --     lazy = false,
    -- },

    {
        "itchyny/lightline.vim",
        lazy = false,
        config = function()
            setup()
        end
    },
}
