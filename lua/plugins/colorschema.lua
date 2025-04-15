return {
  -- add eldritch
  { "eldritch-theme/eldritch.nvim", lazy = false, priority = 1000 }, -- Set lazy = false and priority to load early

  -- Configure LazyVim to load eldritch
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "eldritch",
    },
  },
  -- Optional: Configure eldritch palette (If you want a different palette)
  {
    "eldritch-theme/eldritch.nvim",
    opts = {
      palette = "darker", -- Available options: "default" (standard palette), "darker" (darker variant) , "lighter",
    },
  },
}
