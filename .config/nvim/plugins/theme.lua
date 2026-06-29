local M = {}

-- ============================================================================
-- THEME DEFINITIONS
-- ============================================================================

local themes = {
    -- ["everforest-light"] = {
    --     nvim = {
    --         setup = function()
    --             vim.o.background = "light"
    --         end,
    --         colorscheme = "everforest",
    --         on_highlights = function(hl, palette)
    --         hl.TSDanger = {}
    --         end,
    --     }
    --     },
    --     tmux = {
    --         config_file = "everforest-light.conf",
    --     },
    --     kitty = {
    --         config_file = "everforest-light.conf",
    --     },
    -- },

    ["gruvbox-light"] = {
        nvim = {
            setup = function()
                vim.o.background = "light"
            end,
            colorscheme = "gruvbox",
        },
        tmux = {
            config_file = "gruvbox-light.conf",
        },
        kitty = {
            config_file = "gruvbox-light.conf",
        },
    },

    ["gruvbox-material-dark"] = {
        nvim = {
            setup = function()
                vim.g.gruvbox_material_enable_italic = 1
                vim.g.gruvbox_material_background = "hard" -- Default: medium.
                vim.g.gruvbox_material_foreground = "material"
                vim.o.background = "dark"
            end,
            colorscheme = "gruvbox-material",
            highlights = {
                Visual = { bg = "#e78a4e", fg = "#1d2021" },
                Type = { link = "Normal" },
                Special = { link = "Normal" },
            }
        },
        tmux = {
            config_file = "gruvbox-material-dark-hard.conf",
        },
        kitty = {
            config_file = "gruvbox-material-dark-hard.conf",
        },
    },

    ["gruvbox-material-light"] = {
        nvim = {
            setup = function()
                vim.g.gruvbox_material_enable_italic = 1
                vim.g.gruvbox_material_background = "hard" -- Default: medium.
                vim.g.gruvbox_material_foreground = "material"
                vim.o.background = "light"
            end,
            colorscheme = "gruvbox-material",
            highlights = {
                -- Visual = { bg = "#e78a4e", fg = "#1d2021" },
                Type = { link = "Normal" },
                Special = { link = "Normal" },
            }
        },
        tmux = {
            config_file = "gruvbox-material-light-hard.conf",
        },
        kitty = {
            config_file = "gruvbox-material-light-hard.conf",
        },
    },

    vimbones = {
        nvim = {
            setup = function()
                vim.o.background = "dark"
                vim.g.vimbones = {
                    italic_strings = false,
                }
            end,
            colorscheme = "vimbones",
        },
        tmux = {
            config_file = "vimbones.conf",
        },
        kitty = {
            config_file = "vimbones.conf",
        },
    },

    ["github-light"] = {
        nvim = {
            setup = function()
                vim.o.background = "light"
            end,
            colorscheme = "github_light_colorblind",
            highlights = {
                WinBar     = { bg = "#ddddde", fg = "#24292f" },
                WinBarNC   = { bg = "#ddddde", fg = "#6e7781" },
                StatusLine = { bg = "#ddddde", fg = "#24292f" },
            },
        },
        tmux = {
            config_file = "github-light-colorblind.conf",
        },
        kitty = {
            config_file = "github-light-colorblind.conf",
        },
    },

    ["github-dark"] = {
        nvim = {
            setup = function()
                vim.o.background = "dark"
            end,
            colorscheme = "github_dark_colorblind",
            highlights = {
                -- WinBar     = { bg = "#ddddde", fg = "#24292f" },
                -- WinBarNC   = { bg = "#ddddde", fg = "#6e7781" },
                -- StatusLine = { bg = "#ddddde", fg = "#24292f" },
            },
        },
        tmux = {
            config_file = "github-dark-colorblind.conf",
        },
        kitty = {
            config_file = "github-dark-colorblind.conf",
        },
    },


    neobones = {
        nvim = {
            setup = function()
                vim.o.background = "dark"
                vim.g.neobones = {
                    italic_strings = false,
                    -- italic_comments = false,
                    -- darkness = "warm",
                }
            end,
            colorscheme = "neobones",
            highlights = {
                ColorColumn = { bg = '#20303A' }
            }
        },
        tmux = {
            config_file = "neobones-dark.conf",
        },
        kitty = {
            config_file = "neobones-dark.conf",
        },
    },

    zenwritten = {
        nvim = {
            setup = function()
                vim.o.background = "dark"
                vim.g.zenwritten = { italic_strings = false }
            end,
            colorscheme = "zenwritten",
        },
        tmux = {
            config_file = "tokyobones-dark.conf",
        },
        kitty = {
            config_file = "tokyobones-dark.conf",
        },
    },

    -- TODO: Make the commands from treesitter (gh) have the comments greyed out.
    ["flexoki-light"] = {
        nvim = {
            setup = function()
                vim.o.background = "light"
                vim.g.flexoki = {
                    italic_strings = false,
                }
            end,
            colorscheme = "flexoki-light",
            highlights = {
                -- TODO: Make this a function which will link hl groups.
                -- In that way, we can use it for multiple themes.
                WinSeparator   = { fg = "#CECDC3" },

                -- Core UI/groups – all same fg, no style
                Normal         = { fg = "#100F0F" },
                -- Visual       = { fg = "#100F0F" },
                Comment        = { fg = "#919187" },
                Constant       = { fg = "#100F0F" },
                String         = { fg = "#100F0F" },
                Character      = { fg = "#100F0F" },
                Number         = { fg = "#100F0F" },
                Boolean        = { fg = "#100F0F" },
                Float          = { fg = "#100F0F" },
                Identifier     = { fg = "#100F0F" },
                Function       = { fg = "#100F0F" },
                Statement      = { fg = "#100F0F" },
                Conditional    = { fg = "#100F0F" },
                Repeat         = { fg = "#100F0F" },
                Label          = { fg = "#100F0F" },
                Operator       = { fg = "#100F0F" },
                Keyword        = { fg = "#100F0F" },
                Exception      = { fg = "#100F0F" },
                PreProc        = { fg = "#100F0F" },
                Include        = { fg = "#100F0F" },
                Define         = { fg = "#100F0F" },
                Macro          = { fg = "#100F0F" },
                Type           = { fg = "#100F0F" },
                StorageClass   = { fg = "#100F0F" },
                Structure      = { fg = "#100F0F" },
                Typedef        = { fg = "#100F0F" },
                Special        = { fg = "#100F0F" },
                SpecialComment = { fg = "#100F0F" },
                Underlined     = { fg = "#100F0F" },
                Todo           = { fg = "#100F0F" },
                Error          = { fg = "#100F0F" },

                Pmenu          = { fg = "#100F0F" },
                PmenuSel       = { fg = "#100F0F" },
                -- CursorLine     = {},

                -- Git diff stays colored
                -- DiffAdd    = { fg = "#100F0F", bg = "#143D20" },
                -- DiffChange = { fg = "#100F0F", bg = "#363114" },
                -- DiffDelete = { fg = "#100F0F", bg = "#4B1818" },
                -- DiffText   = { fg = "#100F0F", bg = "#6B4E16" },
            }
        },
        tmux = {
            config_file = "flexoki-light.conf",
        },
        kitty = {
            config_file = "flexoki-light.conf",
        },
    },

    ["flexoki-dark"] = {
        nvim = {
            setup = function()
                vim.o.background = "dark"
                vim.g.flexoki = {
                    italic_strings = false,
                }
            end,
            colorscheme = "flexoki-dark",
            highlights = {
                WinSeparator   = { fg = "#403E3C" },

                -- Teal selection (matches tmux bar), dark text for contrast
                -- Visual         = { fg = "#100F0F", bg = "#3AA99F" },

                -- Cream/white text for all syntax (flexoki dark `tx` = #CECDC3)
                Normal         = { fg = "#CECDC3" },
                Constant       = { fg = "#CECDC3" },
                String         = { fg = "#CECDC3" },
                Character      = { fg = "#CECDC3" },
                Number         = { fg = "#CECDC3" },
                Boolean        = { fg = "#CECDC3" },
                Float          = { fg = "#CECDC3" },
                Identifier     = { fg = "#CECDC3" }, -- @variable follows this
                Function       = { fg = "#CECDC3" },
                Statement      = { fg = "#CECDC3" },
                Conditional    = { fg = "#CECDC3" },
                Repeat         = { fg = "#CECDC3" },
                Label          = { fg = "#CECDC3" },
                Operator       = { fg = "#CECDC3" },
                Keyword        = { fg = "#CECDC3" },
                Exception      = { fg = "#CECDC3" },
                PreProc        = { fg = "#CECDC3" },
                Include        = { fg = "#CECDC3" },
                Define         = { fg = "#CECDC3" },
                Macro          = { fg = "#CECDC3" },
                Type           = { fg = "#CECDC3" },
                StorageClass   = { fg = "#CECDC3" },
                Structure      = { fg = "#CECDC3" },
                Typedef        = { fg = "#CECDC3" },
                Special        = { fg = "#CECDC3" }, -- Delimiter/punctuation link here
                SpecialChar    = { fg = "#CECDC3" }, -- string escapes
                SpecialComment = { fg = "#CECDC3" },
                Tag            = { fg = "#CECDC3" }, -- jsx/html tags
                Underlined     = { fg = "#CECDC3" },
                Todo           = { fg = "#CECDC3" },
                Error          = { fg = "#CECDC3" },

                -- Comments stay greyed (flexoki dark default)
                Comment        = { fg = "#575653" },

                -- Git diffs left untouched -> stay colored
            }
        },
        tmux = {
            config_file = "flexoki-dark.conf",
        },
        kitty = {
            config_file = "flexoki-dark.conf",
        },
    },

    zenburned = {
        nvim = {
            setup = function()
                vim.g.zenburned = { italic_strings = false }
            end,
            colorscheme = "zenburned",
            highlights = {
                ColorColumn = { bg = '#746956' }
            }
        },
        tmux = {
            config_file = "zenburned.conf"
        },
        kitty = {
            config_file = "zenburned.conf"
        }
    },

    zenbones_dark = {
        nvim = {
            setup = function()
                vim.g.zenbones = { italic_strings = false }
            end,
            colorscheme = "zenbones",
            highlights = {
                ColorColumn = { bg = '#2E2927' }
            }
        },
        tmux = {
            config_file = "zenbones-dark.conf"
        },
        kitty = {
            config_file = "zenbones-dark.conf"
        }
    },

    tokyobones_dark = {
        nvim = {
            setup = function()
                vim.g.tokyobones = { italic_strings = false }
            end,
            colorscheme = "tokyobones",
            highlights = {
                ColorColumn = { bg = '#303142' }
            }
        },
        tmux = {
            config_file = "tokyobones-dark.conf"
        },
        kitty = {
            config_file = "tokyobones-dark.conf"
        }
    },


    zenbones_light = {
        nvim = {
            setup = function()
                vim.g.zenbones = { italic_strings = false }
            end,
            colorscheme = "zenbones",
            highlights = {
                ColorColumn = { bg = '#2E2927' }
            }
        },
        tmux = {
            config_file = "zenbones-light.conf"
        },
        kitty = {
            config_file = "zenbones-light.conf"
        }
    },

    -- TODO: Fix the colors and add kitty/tmux themes.
    -- black_metal = {
    --     nvim = {
    --         setup = function()
    --             vim.o.background = "dark",
    --             require("black-metal").setup({
    --                 theme = "immortal",
    --                 variant = "dark",
    --             })
    --             require("black-metal").load()
    --         end,
    --         colorscheme = "black-metal",
    --         highlights = {
    --             ColorColumn = { bg = '#2E2927' }
    --         }
    --     },
    --     tmux = {
    --         config_file = "zenbones-light.conf"
    --     },
    --     kitty = {
    --         config_file = "zenbones-light.conf"
    --     }
    -- },


    menguless = {
        nvim = {
            setup = function()
                vim.g.menguless = { italic_strings = false }
            end,
            colorscheme = "menguless",
            highlights = {
                ColorColumn = { bg = '#063a38' },
                MatchParen = { bg = '#969c46' },
                StatusLineNC = {},
                IncSearch = { bg = "#969c46" },
            }
        },
        tmux = {
            config_file = "menguless.conf"
        },
        kitty = {
            config_file = "menguless.conf"
        }
    },

    acme = {
        nvim = {
            setup = function()
                vim.g.acme_style = "plain"
            end,
            colorscheme = "acme",
            highlights = {
                LspDiagnosticsDefaultError = { fg = "#000000" },
                LspDiagnosticsDefaultWarning = { fg = "#000000" },
                LspDiagnosticsDefaultInformation = { fg = "#000000" },
                LspDiagnosticsDefaultHint = { fg = "#000000" },
                LspDiagnosticsUnderlineError = { fg = "#000000", undercurl = true },
                LspDiagnosticsUnderlineWarning = { fg = "#000000", undercurl = true },
                LspDiagnosticsUnderlineInformation = { fg = "#000000", undercurl = true },
                LspDiagnosticsUnderlineHint = { fg = "#000000", undercurl = true },

                DiagnosticError = { fg = "#000000" },
                DiagnosticWarn = { fg = "#000000" },
                DiagnosticInfo = { fg = "#000000" },
                DiagnosticHint = { fg = "#000000" },

                ["@variable"] = { fg = "#000000" },

                IncSearch = { bg = "#cceeff" },

                DiffChange = { fg = "#000000", bg = "#eeeecc" },
                DiffText = { fg = "#000000", bg = "#cccc44" },

                Folded = { fg = "#000000", bg = "#eaffff" },
                QuickFixLine = { fg = "#000000", bg = "#cceeff" },
            }
        },
        tmux = {
            config_file = "acme.conf"
        },
        kitty = {
            config_file = "acme.conf"
        }
    },
}

-- ============================================================================
-- FILE UPDATE CONFIGURATION
-- ============================================================================

local function build_file_configs(theme)
    return {
        {
            name = "tmux",
            path = "~/.tmux.conf",
            pattern = "(source%-file%s+~/.tmux/)([^%s]+%.conf)",
            replacement = "%1" .. theme.tmux.config_file,
            -- This mitigates some artifacts that I've seen appear. A bit bloated.
            reload =
            "tmux source-file ~/.tmux.conf && tmux refresh-client && tmux display-message 'Theme reloaded' 2>/dev/null || true"
        },
        {
            name = "kitty",
            path = "~/.config/kitty/kitty.conf",
            pattern = "(include%s+%./themes/)([^%s]+%.conf)",
            replacement = "%1" .. theme.kitty.config_file,
            reload = "kill -SIGUSR1 $(pgrep -x kitty) 2>/dev/null || true"
        }
    }
end

-- ============================================================================
-- PERSISTENCE
-- ============================================================================

local state_file = vim.fn.stdpath('data') .. '/theme_state.txt'

local function save_theme(theme_name)
    local file = io.open(state_file, 'w')
    if file then
        file:write(theme_name)
        file:close()
    end
end

local function load_last_theme()
    local file = io.open(state_file, 'r')
    if file then
        local theme_name = file:read('*l')
        file:close()
        if theme_name and themes[theme_name] then
            M.apply(theme_name)
        end
    end
end

-- ============================================================================
-- CORE FUNCTIONS
-- ============================================================================

local function update_file(config)
    local path = vim.fn.expand(config.path)

    -- Read file
    local file = io.open(path, "r")
    if not file then
        return false, string.format("[%s] Cannot open %s", config.name, path)
    end
    local content = file:read("*all")
    file:close()

    -- Update content
    local updated, count = content:gsub(config.pattern, config.replacement)
    if count == 0 then
        return false, string.format("[%s] Pattern not found in %s", config.name, path)
    end

    -- Write back
    file = io.open(path, "w")
    if not file then
        return false, string.format("[%s] Cannot write to %s", config.name, path)
    end
    file:write(updated)
    file:close()

    -- Reload if specified
    if config.reload then
        vim.fn.system(config.reload)
    end

    return true
end

local function update_nvim(theme_config)
    local ok, err = pcall(function()
        -- Run setup if defined
        if theme_config.setup then
            theme_config.setup()
        end

        -- Apply colorscheme
        vim.cmd.colorscheme(theme_config.colorscheme)

        -- Apply custom highlights
        for group, opts in pairs(theme_config.highlights or {}) do
            vim.api.nvim_set_hl(0, group, opts)
        end

        -- I want this for all my themes. It looks cleaner.
        -- The definitions, hovers, will maintain the bg colors.
        vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })
        vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })
        vim.api.nvim_set_hl(0, 'Pmenu', { link = 'Normal' })
        vim.api.nvim_set_hl(0, 'PmenuSel', { link = 'Visual' })
        vim.api.nvim_set_hl(0, 'SnippetTabstop', { link = 'Normal' })
    end)

    if not ok then
        return false, "[nvim] " .. tostring(err)
    end

    return true
end

function M.apply(theme_name)
    local theme = themes[theme_name]
    if not theme then
        local available = {}
        for name in pairs(themes) do
            table.insert(available, name)
        end
        table.sort(available)
        vim.notify(
            string.format("Unknown theme '%s'. Available: %s", theme_name, table.concat(available, ", ")),
            vim.log.levels.ERROR
        )
        return false
    end

    local errors = {}

    -- Update external config files
    for _, file_config in ipairs(build_file_configs(theme)) do
        local ok, err = update_file(file_config)
        if not ok then
            table.insert(errors, err)
        end
    end

    -- Update nvim theme
    local ok, err = update_nvim(theme.nvim)
    if not ok then
        table.insert(errors, err)
    end

    -- Report results
    if #errors == 0 then
        save_theme(theme_name)
        -- vim.notify(string.format("✓ Applied theme: %s", theme_name), vim.log.levels.INFO)
        return true
    else
        vim.notify(
            string.format("Theme '%s' applied with errors:\n%s", theme_name, table.concat(errors, "\n")),
            vim.log.levels.WARN
        )
        return false
    end
end

function M.list()
    local names = {}
    for name in pairs(themes) do
        table.insert(names, name)
    end
    table.sort(names)
    return names
end

-- ============================================================================
-- SETUP
-- ============================================================================

function M.setup()
    vim.api.nvim_create_user_command('Theme', function(opts)
        M.apply(opts.args)
    end, {
        nargs = 1,
        complete = function()
            return M.list()
        end,
        desc = "Apply theme across nvim, tmux, and kitty"
    })

    vim.api.nvim_create_autocmd('VimEnter', {
        callback = function()
            load_last_theme()
        end,
        once = true
    })
end

-- Auto-setup when module is loaded
M.setup()

return M
