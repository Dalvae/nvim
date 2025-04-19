return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "eldritch",
    },
  },
  { "eldritch-theme/eldritch.nvim", lazy = false, priority = 1000 }, -- Set lazy = false and priority to load early

  -- Configure LazyVim to load eldritch
  -- Optional: Configure eldritch palette (If you want a different palette)
  {
    "eldritch-theme/eldritch.nvim",
    opts = {
      palette = "default", -- Available options: "default" (standard palette), "darker" (darker variant) , "lighter",
      transparent = false, -- Make background opaque
      colors = {
        bg = "#000000", -- Negro puro
        -- También puedes personalizar otros colores si lo necesitas
      },
    },
  },
  -- add eldritch
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
}
