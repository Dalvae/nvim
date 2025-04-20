return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "eldritch",
    },
  },

  { "mofiqul/vscode.nvim", lazy = false, priority = 1000 },
  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      palette = "lighter",
      transparent = false,
      ---@param colors ColorScheme
      on_colors = function(colors)
        colors.bg = "#121212" -- Negro menos oscuro
        colors.bg_dark = "#121212"
      end,
      ---@param highlights Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors)
        -- Hacer los comentarios más visibles
        highlights.Comment = {
          fg = colors.gray5, -- Un gris más claro de la paleta
          -- fg = "#B0B8C0", -- O un color hexadecimal específico si prefieres
          italic = true, -- Quitar cursiva
          -- bold = true, -- Opcional: añadir negrita si lo deseas
        }
      end,
    },
  },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000, -- Ensure it loads first
  -- },
}
