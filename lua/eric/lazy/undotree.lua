return {
    "mbbill/undotree",
    init = function()
        vim.g.SetFocusWhenToggle = 1
    end,
    config = function()
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
}
