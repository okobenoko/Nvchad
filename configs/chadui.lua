local highlights = require("custom.configs.highlights")

local ui = {
 theme = "tokyonight",

  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
    load_on_startup = true,
    header = {
      "██████╗ ███████╗ ██████╗ ██████╗ ██████╗ ██████╗",
      " ██╔══██╗██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗",
      " ██████╔╝█████╗  ██║     ██║   ██║██████╔╝██║  ██║",
      " ██╔══██╗██╔══╝  ██║     ██║   ██║██╔══██╗██║  ██║",
      " ██║  ██║███████╗╚██████╗╚██████╔╝██║  ██║██████╔╝",
      " ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ",
    }
  },

  tabufline = { enabled = false, }
}

return ui
