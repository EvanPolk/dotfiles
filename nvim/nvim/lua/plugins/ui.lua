return {
   {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
      opts = {
         flavour = "mocha",
         custom_highlights = function(colors)
            return {
               WinSeparator = {
                  fg = colors.surface0,
               },
            }
         end,
         color_overrides = {
            mocha = {
               base = "#11111b",
               mantle = "#11111b",
            },
         },
         integrations = {
            notify = true,
         },
      },
      init = function()
         vim.cmd.colorscheme("catppuccin")
      end,
   },
   {
      "aznhe21/actions-preview.nvim",
      config = function()
         vim.keymap.set(
            { "v", "n" },
            "<Leader>ca",
            require("actions-preview").code_actions
         )
      end,
   },
   {
      "rcarriga/nvim-notify",
      config = function()
         vim.notify = require("notify")
      end,
   },
   {
      "levouh/tint.nvim",
      opts = {},
   },
}
