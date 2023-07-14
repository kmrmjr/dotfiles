-- local status, autopairs = pcall(require, 'nvim-autopairs.completion.cmp')
local status, autotag = pcall(require, 'nvim-ts-autotag')
if(not status) then return end

autotag.setup {}
