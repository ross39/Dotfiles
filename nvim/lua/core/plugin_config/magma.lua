function MagmaInitPython()
    vim.cmd[[
    :MagmaInit python3
    :MagmaEvaluateArgument a=5
    ]]
end

vim.cmd[[
:command MagmaInitPython lua MagmaInitPython()
]]

vim.api.nvim_set_keymap( 'n', '<leader>rr', ':MagmaEvaluateLine<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap( 'n', '<leader>sm', ':MagmaInit<CR>', { noremap = true, silent = true })
