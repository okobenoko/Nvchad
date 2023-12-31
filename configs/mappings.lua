local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<A-h>"] = { ":BufferLineCyclePrev<CR>", "Tab-", opts = { nowait = true } },
    ["<A-l>"] = { ":BufferLineCycleNext<CR>", "Tab+", opts = { nowait = true } },
  },
    v = {
    [">"] = { ">gv", "indent"},
  },
}

return M
