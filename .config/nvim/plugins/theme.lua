local M = {}

-- ============================================================================
-- THEME DEFINITIONS
-- ============================================================================

local themes = {
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
        hyprland = {
            active_border = "rgba(d18ec2ee) rgba(d18ec2ee) 45deg"
        },
        tmux = {
            config_file = "zenburned.conf"
        },
        kitty = {
            config_file = "zenburned.conf"
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
        hyprland = {
            active_border = "rgba(cceeFFff) rgba(cceeFFff) 45deg"
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
            name = "hyprland",
            path = "~/.config/hypr/hyprland.conf",
            pattern = "(col%.active_border%s*=%s*)([^\n]+)",
            replacement = "%1" .. theme.hyprland.active_border,
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
        desc = "Apply theme across nvim, tmux, hyprland, and kitty"
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
