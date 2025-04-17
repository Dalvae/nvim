return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
      hover = {
        -- Configuración para la vista de hover
        view = "hover", -- Usa la vista 'hover' definida abajo (o por defecto si no se define)
      },
      signature = {
        -- Configuración para la vista de signature help
        view = "signature", -- Usa la vista 'signature' definida abajo
      },
    },
    views = {
      hover = {
        -- Configuración específica para la vista 'hover'
        border = {
          style = "rounded", -- Estilo del borde: "none", "single", "double", "rounded", "solid", "shadow"
          padding = { 1, 2 }, -- Padding [vertical, horizontal]
        },
        size = {
          max_width = 100, -- Ancho máximo
          max_height = 25, -- Alto máximo
        },
        win_options = {
          winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
        },
      },
      signature = {
        -- Configuración específica para la vista 'signature' (opcional, para consistencia)
        border = {
          style = "rounded",
          padding = { 1, 2 },
        },
        size = {
          max_width = 100,
          max_height = 15,
        },
        win_options = {
          winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
        },
      },
      -- Puedes añadir configuraciones para otras vistas aquí si lo necesitas
      -- cmdline_popup = {},
      -- popupmenu = {},
      -- etc.
    },
    -- Puedes añadir o sobreescribir otras opciones de noice.nvim aquí
    -- presets = {
    --   bottom_search = true, -- use a classic bottom cmdline for search
    --   command_palette = true, -- position the cmdline and popupmenu together
    --   long_message_to_split = true, -- long messages will be sent to a split
    --   inc_rename = false, -- enables an input dialog for inc-rename.nvim
    --   lsp_doc_border = true, -- add a border to hover docs and signature help
    -- },
  },
  dependencies = {
    -- Requerido para noice.nvim
    "MunifTanjim/nui.nvim",
    -- Opcional: Dependencia para mensajes de notificación mejorados
    "rcarriga/nvim-notify",
  },
}
