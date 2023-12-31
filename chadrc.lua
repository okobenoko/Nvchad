local rc = {};
local function getconf(file)
    return "custom.configs."..file
end

rc.plugins = getconf("plugins.init")
rc.ui = require(getconf("chadui"))
rc.mappings = require("custom.configs.mappings")

rc.lazy_nvim ={
  git = {
    log = { "-8" },
    timeout = 120,
    url_format = "git@github.com:%s.git",
    filter = true,
  },
}

vim.o.relativenumber = true
vim.o.tabstop = 4

-- Neovide Config
if vim.g.neovide then
  vim.o.guifont = "Fira Code:h12"
  vim.g.neovide_scroll_animation_length = 0.618
  vim.g.neovide_input_ime = true
  vim.g.neovide_transparency = 0.85
  vim.g.neovide_hide_mouse_when_typing = true
end

return rc
