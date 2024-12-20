local themes = {
    ["gruvbox-material-dark"] = {
        nvim = function()
            vim.g.gruvbox_material_enable_italic = 1
            vim.g.gruvbox_material_background = "hard" -- Default: medium.
            vim.g.gruvbox_material_foreground = "material"
            vim.o.background = "dark"

            -- Use an autocmd to apply the color override after the colorscheme loads
            -- Have orange highlights.
            vim.api.nvim_create_autocmd("ColorScheme", {
                pattern = "gruvbox-material",
                callback = function()
                    vim.api.nvim_set_hl(0, "Visual", { bg = "#e78a4e", fg = "#504945" })
                end
            })

            vim.cmd('colorscheme gruvbox-material')
            vim.g.lightline = {
                colorscheme = 'gruvbox_material_dark_hard',
                component = {
                    filename = '%F'
                }
            }
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
        end,
        kitty = "gruvbox-material-light-medium",
        tmux = "gruvbox-material-light-medium"
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
        kitty = "rose-pine-main"
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
        tmux = "iceberg_minimal"
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
        end,
        kitty = "kanagawa",
        tmux = "kanagawa-wave",
    },

    ["kanagawa-paper"] = {
        nvim = function()
            vim.cmd('colorscheme kanagawa-paper')
            vim.g.lightline = {
                colorscheme = 'kanagawa',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "kanagawa",
        tmux = "kanagawa-wave",
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
        end,
        kitty = "zenbones-dark",
        tmux = "zenbones-dark",
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

    ["acme-colors"] = {
        nvim = function()
            vim.cmd('colorscheme acme-colors')
            vim.g.lightline = {
                colorscheme = 'acme-colors',
                component = {
                    filename = '%F'
                }
            }
        end,
        -- kitty = "zenbones",
    },

    ["yui"] = {
        nvim = function()
            vim.cmd('colorscheme yui')
            vim.g.lightline = {
                colorscheme = 'yui',
                component = {
                    filename = '%F'
                }
            }
        end,
        -- kitty = "zenbones",
    },
}

-- Function to switch TMux theme
local function switch_tmux_theme(theme_name)
    local tmux_config_path = os.getenv("HOME") .. "/.tmux.conf"

    -- Read the current tmux.conf
    local file = io.open(tmux_config_path, "r")
    if not file then
        print("Could not open TMux config file")
        return
    end
    local content = file:read("*all")
    file:close()

    -- Create the new theme line
    local new_theme_line = string.format('source-file ~/.tmux/%s.conf', theme_name)

    -- Replace the existing theme line
    local new_content = content:gsub('source%-file %~/%.[%w/-]+%.conf', new_theme_line)

    -- Write the updated content back to tmux.conf
    file = io.open(tmux_config_path, "w")
    if not file then
        print("Could not write to TMux config file")
        return
    end
    file:write(new_content)
    file:close()

    -- Reload TMux configuration
    os.execute("tmux source-file ~/.tmux.conf")
end

-- Function to switch Kitty theme
local function switch_kitty_theme(theme_name)
    local kitty_config_path = os.getenv("HOME") .. "/.config/kitty/kitty.conf"
    local kitty_theme_line = "include themes/" .. theme_name .. ".conf"

    -- Read the current kitty.conf
    local file = io.open(kitty_config_path, "r")
    if not file then
        print("Could not open Kitty config file")
        return
    end
    local content = file:read("*all")
    file:close()

    -- Replace the theme line or add it if it doesn't exist
    local new_content, count = content:gsub("include themes/.-%.conf", kitty_theme_line)
    if count == 0 then
        new_content = content .. "\n" .. kitty_theme_line
    end

    -- Write the updated content back to kitty.conf
    file = io.open(kitty_config_path, "w")
    if not file then
        print("Could not write to Kitty config file")
        return
    end
    file:write(new_content)
    file:close()

    -- Reload Kitty configuration
    -- TODO: Fix this..at the moment it adds a new line to the end of the file,
    -- but it does not reload the configuration.
    os.execute("kill -SIGUSR1 $(pgrep kitty)")
end

function Switch_theme(theme_name)
    local theme = themes[theme_name]
    if theme then
        theme.nvim()
        -- Lightline was not being updated.
        vim.cmd('call lightline#enable()')

        -- Background of the hovers was the same with the highlight in visual mode.
        -- Link NormalFloat to Normal, so it inherits the default background and foreground colors
        vim.cmd('highlight! link NormalFloat Normal')
        -- Link Pmenu to Normal to inherit the main background color
        vim.cmd('highlight! link Pmenu Normal')
        -- Link PmenuSel to Visual for selected items to inherit selection highlight color
        vim.cmd('highlight! link PmenuSel Visual')
        -- Weird issue where autocomplete suggestions had their parameters highlighted.
        vim.cmd('highlight! link SnippetTabstop Normal')

        switch_kitty_theme(theme.kitty)
        if theme.tmux then
            switch_tmux_theme(theme.tmux)
        end
    else
    end
end

-- TODO Add color changes to:
--      - firefox
--      - k9s
--      - *obsidian
--      - *system
Switch_theme('zenbones-light')
