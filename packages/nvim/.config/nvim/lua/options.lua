local opts = {
  shell = '/bin/zsh',
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  textwidth = 0,
  autoindent = true,
  clipboard = 'unnamed',
  conceallevel = 0,
  mouse = '',
  number = true,
  -- Search config
  ignorecase = true,
  -- Case insensitive by default
  smartcase = true,
  hlsearch = true,
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

vim.g.vim_json_syntax_conceal = 0
