local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
local maps = {
  {"i", "jj", "<ESC>", opts},

  {'n', ';', ':', opts},
  {'v', ':', ';', opts},

  -- Move cursor by display lines
  {'n', 'j', 'gj', opts},
  {'n', 'k', 'gk', opts},
  {'v', 'j', 'gj', opts},
  {'v', 'k', 'gk', opts},

  -- Move cursor by lines
  {'n', 'gj', 'j', opts},
  {'n', 'gk', 'k', opts},
  {'v', 'gj', 'j', opts},
  {'v', 'gk', 'k', opts},

  -- Move left and right in insert mode
  {'i', '<C-h>', '<Left>', opts},
  {'i', '<C-l>', '<Right>', opts},

  -- Move to start of line with H
  {'n', 'H', '^', opts},
  {'v', 'H', '^', opts},

  -- Move to end of line with L
  {'n', 'L', '$', opts},
  {'v', 'L', '$h', opts},

  -- Operator settings
  -- d, c: delete texts without overwriting the yanked text.
  -- t: delete texts overwriting the yanked text.
  {'v', 'd', '"_d', opts},
  {'n', 'd', '"_d', opts},
  {'v', 'D', '"_D', opts},
  {'n', 'D', '"_D', opts},
  {'v', 'x', '"_x', opts},
  {'n', 'x', '"_x', opts},
  {'v', 's', '"_s', opts},
  {'n', 's', '"_s', opts},

  -- Delete texts overwriting the yanked text.
  {'n', 't', 'd', opts},
  {'v', 't', 'x', opts},
  {'n', 'tt', 'dd', opts},
  {'n', 'T', 'D', opts},

  -- Change texts without overwriting the yanked text.
  {'n', 'c', '"_c', opts},
  {'v', 'c', '"_c', opts},
  {'n', 'C', '"_C', opts},

  -- Move window
  {'n', 'sh', '<C-w>h', opts},
  {'n', 'sk', '<C-w>k', opts},
  {'n', 'sj', '<C-w>j', opts},
  {'n', 'sl', '<C-w>l', opts},

  -- Paste texts without overwriting the yanked text.
  {'v', 'p', '"_dP', opts},

  -- Duplicate line
  {'n', 'dl', '"dyy"dp', opts},
  {'v', '<Leader>d', 'ma"dy`a"dp', opts},

  -- Split window
  {'n', 'ss', ':split<CR><C-w>j', opts},
  {'n', 'sv', ':vsplit<CR><C-w>l', opts},

  -- Make current window full-width
  {'n', 'fw', '<C-w>\\|', opts},

  -- Make all windows' height and width same
  {'n', 'rw', '<C-w>=', opts},

  -- Delete highlight
  {'n', '<Esc><Esc>', ':nohlsearch<CR>', opts},

  -- Open current directory
  {'n', 'te', ':tab split<CR>', opts},
  {'n', '<C-h>', ':tabprev<CR>', opts},
  {'n', '<C-l>', ':tabnext<CR>', opts},

  -- Save and close file
  {'n', '<Leader>w', ':w<CR>', opts},
  {'n', '<Leader>w<CR>', ':w<CR>', opts},
  {'n', '<Leader>q<CR>', ':q!<CR>', opts},
  {'n', '<Leader>qqq', ':bufdo! q!<CR>', opts},
  {'n', '<Leader>www', ':bufdo! wq!<CR>', opts},
  {'n', '<Leader>wq', ':wq<CR>', opts},

  -- insert space after comma and =
  -- {'i', ',', ', ', opts},
  -- {'i', '=', '= ', opts},

  -- Operate block
  {'n', 'tb', '%v%t<C-o>', opts},

  -- Operate all
  {'n', '<C-a>', 'gg<S-v>G', opts},
  {'n', 'ta<CR>', ':%d<CR>', opts},
  {'n', 'ya<CR>', ':%y<CR>', opts},
  {'n', 'da<CR>', '<C-a>d', opts},
}

for i, v in ipairs(maps) do
  vim.api.nvim_set_keymap(unpack(v))
end
