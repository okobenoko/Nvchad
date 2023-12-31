local orr = {}

orr.treesitter = {
  ensure_installed = {
    "lua",
    "html", "css", "javascript",
    "markdown", "markdown_inline",
    "zig", "rust", "c",
    "ini", "toml", "json",
    "jsonc", "godot_resource"
  },
  indent = {
    enable = true,
  },
}

orr.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return orr
