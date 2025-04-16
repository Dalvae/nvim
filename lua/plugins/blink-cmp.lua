-- Configuración básica para blink-cmp
-- Puedes ajustar las opciones según tus necesidades
return {
  "saghen/blink.cmp",
  event = "VeryLazy", -- O el evento que prefieras
  dependencies = {
    -- blink-cmp puede necesitar fuentes de completado,
    -- asegúrate de tener las que necesites instaladas
    -- por ejemplo, cmp-nvim-lsp, cmp-buffer, etc.
    -- Si ya están como dependencias en otro sitio (como el cmp deshabilitado),
    -- Lazy.nvim las gestionará.
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    -- Puedes añadir más fuentes aquí si las necesitas
  },
  config = function()
    local cmp = require("cmp")
    local blink_cmp = require("blink_cmp")

    -- Configuración básica de blink-cmp integrada con nvim-cmp
    cmp.setup({
      -- Aquí puedes reutilizar parte de tu configuración anterior de nvim-cmp
      -- o adaptarla a blink-cmp según su documentación.
      -- Por ejemplo, las fuentes:
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        -- Añade otras fuentes si es necesario
      }),

      -- Mapeos básicos (puedes personalizarlos)
      mapping = cmp.mapping.preset.insert({
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
        -- Puedes añadir los mapeos de <Tab> y <S-Tab> si los quieres mantener
      }),

      -- Integración con blink-cmp
      formatting = {
        format = blink_cmp.format(), -- Usa el formateador de blink-cmp
      },
      experimental = {
        ghost_text = {
          hl_group = "CmpGhostText", -- O el grupo de resaltado que prefieras
        },
      },
      -- Puedes añadir más configuraciones de nvim-cmp aquí
    })

    -- Configuración específica de blink-cmp (opcional)
    blink_cmp.setup({
      -- Opciones de blink-cmp, por ejemplo:
      -- style = "icons", -- o "text"
      -- delay = 100,
      -- show_details = true,
    })
  end,
}
