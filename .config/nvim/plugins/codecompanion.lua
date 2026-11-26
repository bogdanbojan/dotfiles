vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_filetypes = { ["*"] = false }
vim.g.copilot_enabled = false

vim.cmd.packadd("copilot.vim")

-- Needs a Tavily API Key for @web_search.
require("codecompanion").setup({
    opts = {
        log_level = "ERROR",
    },
    -- interactions = {
    strategies = {
        chat = {
            roles = {
                llm  = "Borges",
                user = "Funes",

            },
            adapter = {
                name = "copilot",
                model = "claude-sonnet-5",
            }
        }
    },
    display = {
        chat = {
            intro_message = "Ask the Memorious...",
            fold_reasoning = true,
            show_reasoning = true,
        },
    },
})

-- Simple "Thinking..." feedback while waiting for the LLM's first token.
-- Copilot doesn't stream Claude's thinking, so the chat buffer sits silent
-- between <Enter> and the first answer token. This shows "Thinking" with
-- cycling dots until tokens start to flow.
local ns = vim.api.nvim_create_namespace("cc_thinking")
local dots = { "", ".", "..", "..." }
local timer, idx, bufnr

local function draw()
    if not (bufnr and vim.api.nvim_buf_is_valid(bufnr)) then return end
    idx = (idx % #dots) + 1
    local last = vim.api.nvim_buf_line_count(bufnr) - 1
    vim.api.nvim_buf_clear_namespace(bufnr, ns, 0, -1)
    vim.api.nvim_buf_set_extmark(bufnr, ns, last, 0, {
        virt_lines = { { { "Thinking" .. dots[idx], "Comment" } } },
    })
end

local grp = vim.api.nvim_create_augroup("CodeCompanionThinking", { clear = true })
vim.api.nvim_create_autocmd("User", {
    group = grp,
    pattern = "CodeCompanionRequestStarted",
    callback = function()
        local chat = require("codecompanion").last_chat()
        if not chat then return end
        bufnr, idx = chat.bufnr, 0
        draw()
        timer = vim.fn.timer_start(350, draw, { ["repeat"] = -1 })
    end,
})
vim.api.nvim_create_autocmd("User", {
    group = grp,
    pattern = { "CodeCompanionRequestStreaming", "CodeCompanionRequestFinished" },
    callback = function()
        if timer then
            vim.fn.timer_stop(timer); timer = nil
        end
        if bufnr and vim.api.nvim_buf_is_valid(bufnr) then
            vim.api.nvim_buf_clear_namespace(bufnr, ns, 0, -1)
        end
    end,
})

vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>a", function() require("codecompanion").toggle() end,
    { noremap = true, silent = true })
-- vim.keymap.set({ "n", "v" }, "<leader>ab", function() require("codecompanion").a end, { noremap = true, silent = true })
vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])
