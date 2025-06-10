return {
  "github/copilot.vim",
  config = function()
    -- Optional: Custom configuration for Copilot if needed
    vim.g.copilot_no_tab_map = true  -- Disable default <Tab> mapping
    vim.api.nvim_set_keymap("i", "<C-j>", "copilot#Accept()", { noremap = true, expr = true, silent = true })
    vim.api.nvim_set_keymap("i", "<C-k>", "copilot#Previous()", { noremap = true, expr = true, silent = true })
  end
}
