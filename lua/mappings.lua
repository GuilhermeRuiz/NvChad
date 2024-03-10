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
