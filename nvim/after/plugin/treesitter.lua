require 'nvim-treesitter.install'.compilers = { "clang" }
require 'nvim-treesitter.install'.prefer_git = false
require'nvim-treesitter.configs'.setup {

  ensure_installed = {"c", "lua", "python" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,


    additional_vim_regex_highlighting = false,
  },
}
