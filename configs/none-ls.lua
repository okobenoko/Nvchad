local none_ls = require("null-ls")

local b = none_ls.builtins

local sources = {
  b.formatting.deno_fmt,
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },
  b.formatting.stylua,
  b.formatting.clang_format,
}

none_ls.setup {
  debug = true,
  sources = sources,
}
