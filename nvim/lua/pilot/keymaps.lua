vim.g.mapleader = ' '

local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, {
    noremap = true,
    silent  = true -- don't show command mode
  })
end

-- quickly open netrw
map('n', '<leader>fv', ':Ex<return>')
-- don't loose the current selection when replacing something
map('x', 'p', '\"_dP')
