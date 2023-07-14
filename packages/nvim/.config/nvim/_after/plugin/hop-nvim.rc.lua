local hop = require('hop')
local directions = require('hop.hint').HintDirection
hop.setup()

vim.keymap.set('', '<leader>cc', function()
  hop.hint_char1({ direction = directions.BOTH_CURSOR, current_line_only = false })
end, {remap=true})

vim.keymap.set('', '<leader>s', function()
  hop.hint_char2({ direction = directions.BOTH_CURSOR, current_line_only = false })
end, {remap=true})

vim.keymap.set('', '<leader>j', function()
  hop.hint_lines_skip_whitespace({direction = directions.AFTER_CURSOR, current_line_only = false })
end, {remap=true})

vim.keymap.set('', '<leader>k', function()
  hop.hint_lines_skip_whitespace({direction = directions.BEFORE_CURSOR})
end, {remap=true})

vim.keymap.set('', '<leader>l', function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})

vim.keymap.set('', '<leader>h', function()
  hop.hint_words({direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})

vim.cmd("hi HopNextKey guifg=#f8ff38")
vim.cmd("hi HopNextKey1 guifg=#ffc038")
vim.cmd("hi HopNextKey2 guifg=#f8ff38")
