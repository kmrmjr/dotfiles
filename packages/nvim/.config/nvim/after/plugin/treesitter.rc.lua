require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {"html", "vim", "lua"},
  },
  indent = {
    enable = true,
    disable = {"python"},
  },
  ensure_installed = {
    "tsx",
    "javascript",
    "toml",
    "yaml",
    "html",
    "scss",
    "go",
    "bash",
    "python",
    "dockerfile",
    "yaml",
  },
  -- autotag = {
  --   enable = true,
  -- }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

