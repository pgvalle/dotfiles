-- automatically loads options when this file is saved
vim.cmd [[
  augroup user_options
    autocmd!
    autocmd BufWritePost options.lua source <afile>
  augroup end
]]

local options = {
  -- file stuff
  fileencoding = 'utf-8',                  -- the encoding written to a file
  backup = false,                          -- creates a backup file
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  undofile = true,                         -- enable persistent undo
  swapfile = false,                        -- creates a swapfile

  -- appearance
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  cursorline = true,                       -- highlight the current line
  wrap = false,                            -- display lines as one long line
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}

  -- tabs
  tabstop = 2,                             -- insert 2 spaces for a tab
  softtabstop = 2,
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  expandtab = true,                        -- convert tabs to spaces
  smartindent = true,                      -- make indenting smarter again

  clipboard = 'unnamedplus',               -- allows neovim to access the system clipboard
  completeopt = { 'menuone', 'noselect' }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  hlsearch = false,                        -- highlight all matches on previous search pattern
  incsearch = true,
  ignorecase = true,                       -- ignore case in search patterns
  mouse = 'a',                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  smartcase = true,                        -- smart case
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
  updatetime = 300,                        -- faster completion (4000ms default)
  signcolumn = 'yes',                      -- always show the sign column, otherwise it would shift the text each time
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append 'c' 

vim.cmd 'set whichwrap+=<,>,[,],h,l' 
vim.cmd 'set iskeyword+=-' 
vim.cmd 'set formatoptions-=cro'  -- TODO: this doesn't seem to work
