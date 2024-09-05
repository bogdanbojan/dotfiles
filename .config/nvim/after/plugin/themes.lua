local themes = {
    ["gruvbox-material"] = {
        nvim = function()
            vim.cmd('colorscheme gruvbox-material')
            vim.g.lightline = {
                colorscheme = 'gruvbox_material',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "gruvbox-material-medium"
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

    ["rose-pine-moon"] = {
        nvim = function()
            vim.cmd('colorscheme rose-pine-moon')
            vim.g.lightline = {
                colorscheme = 'rosepine',
                component = {
                    filename = '%F'
                }
            }
        end,
        kitty = "rose-pine-moon"
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
        kitty = "iceberg"
    },
}

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
        switch_kitty_theme(theme.kitty)
    else
    end
end

Switch_theme('gruvbox-material')
