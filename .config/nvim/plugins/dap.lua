local mason_dap = require("mason-nvim-dap")
local dap = require("dap")
local ui = require("dap-view")
local dap_virtual_text = require("nvim-dap-virtual-text")
dap_virtual_text.setup()
ui.setup()

mason_dap.setup({
    ensure_installed = { "delve" },
    automatic_installation = true,
    handlers = {
        function(config)
            require("mason-nvim-dap").default_setup(config)
        end,
    },
})

dap.configurations = {
    go = {
        {
            type = "delve",
            name = "Debug",
            request = "launch",
            program = "${file}",
        },
        {
            type = "delve",
            name = "Debug test",
            request = "launch",
            mode = "test",
            program = "${fileDirname}",
        },
        {
            type = "delve",
            name = "Debug test (go.mod)",
            request = "launch",
            mode = "test",
            program = "./${relativeFileDirname}",
        },
    },
}

-- vim.fn.sign_define("DapBreakpoint", { text = "🐞" })
vim.fn.sign_define("DapBreakpoint", { text = "B" })

dap.listeners.before.attach.dapui_config = function()
    ui.open()
end
dap.listeners.before.launch.dapui_config = function()
    ui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    ui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    ui.close()
end

vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end, { desc = "DAP: Toggle Breakpoint" })
vim.keymap.set("n", "<leader>dc", function() require("dap").continue() end, { desc = "DAP: Continue" })
vim.keymap.set("n", "<leader>di", function() require("dap").step_into() end, { desc = "DAP: Step Into" })
vim.keymap.set("n", "<leader>dn", function() require("dap").step_over() end, { desc = "DAP: Step Over" })
vim.keymap.set("n", "<leader>do", function() require("dap").step_out() end, { desc = "DAP: Step Out" })
-- vim.keymap.set("n", "<leader>dr", function() require("dap").repl.open() end, { desc = "DAP: Open REPL" })
vim.keymap.set("n", "<leader>dr", function() require("dap").repl.toggle() end, { desc = "DAP: Toggle REPL" })
vim.keymap.set("n", "<leader>dl", function() require("dap").run_last() end, { desc = "DAP: Run Last" })
vim.keymap.set("n", "<leader>ds", function() require("dap").run_last() end, { desc = "DAP: Run Last" })
vim.keymap.set("n", "<leader>dq", function()
    require("dap").terminate()
    require("dap-view").close()
    require("nvim-dap-virtual-text").toggle()
end, { desc = "DAP: Terminate" })
vim.keymap.set("n", "<leader>de", function() require("dap").set_exception_breakpoints({ "all" }) end,
    { desc = "DAP: Exception Breakpoints" })
vim.keymap.set("n", "<leader>dcb", function()
    dap.clear_breakpoints()
end)

vim.keymap.set("n", "<leader>dR", function() require("dap").restart() end, { desc = "DAP: Restart" })
vim.keymap.set("n", "<leader>dP", function() require("dap").pause() end, { desc = "DAP: Pause" })
vim.keymap.set("n", "<leader>dL", function() require("dap").list_breakpoints() end,
    { desc = "DAP: List Breakpoints" })

vim.keymap.set("n", "<leader>dp", function()
    require("dap").set_breakpoint(nil, nil, vim.fn.input("Log message: "))
end, { desc = "DAP: Logpoint" })
vim.keymap.set("n", "<leader>dk", function() require("dap").up() end, { desc = "DAP: Up Frame" })
vim.keymap.set("n", "<leader>dj", function() require("dap").down() end, { desc = "DAP: Down Frame" })

vim.keymap.set("n", "<leader>dS", function()
    local expr = vim.fn.input("Set variable (name = value): ")
    if expr ~= "" then
        require("dap").repl.execute(expr)
    end
end, { desc = "DAP: Set Variable" })
