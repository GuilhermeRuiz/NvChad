require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- dap
map("n", "<leader>dus",
  function ()
    local widgets = require('dap.ui.widgets');
    local sidebar = widgets.sidebar(widgets.scopes);
    sidebar.open();
  end,
  { desc = "DAP Open debugging sidebar" })

map("n", "<F4>", "<ESC><cmd>lua require('dap').toggle_breakpoint()<CR>", { desc = "DAP breakpoint" })
map("n", "<F5>", "<ESC><cmd>lua require('dap').step_over()<CR>", { desc = "DAP step over" })
map("n", "<F6>", "<ESC><cmd>lua require('dap').step_into()<CR>", { desc = "DAP step into" })
map("n", "<F8>", "<ESC><cmd>lua require('dap').repl.open()<CR>", { desc = "DAP repl" })
map("n", "<F9>", "<ESC><cmd>lua require('dap').continue()<CR>", { desc = "DAP continue" })

local buffer = vim.api.nvim_get_current_buf()
-- -- Code navigation and shortcuts
-- vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
map("n", "<c-]>", vim.lsp.buf.definition, { desc = "LSP go to definition", buffer = buffer })
-- vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
-- vim.keymap.set("n", "gD", vim.lsp.buf.implementation, keymap_opts)
map("n", "gD", vim.lsp.buf.implementation, { desc = "LSP go to implementation", buffer= buffer })
-- vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
-- vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, keymap_opts)
-- vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
-- vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, keymap_opts)
-- vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts)
-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)
