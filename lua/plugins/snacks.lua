return {
  "snacks.nvim",
  opts = {
    picker = {
      -- Configuración para mostrar rutas completas en lugar de abreviadas
      formatters = {
        file = {
          filename_first = true, -- No mostrar primero el nombre del archivo
          truncate = true, -- No truncar las rutas
          filename_only = false, -- Mostrar la ruta completa
        },
      },

      -- Configuración para el título de la vista previa
      previewers = {
        file = {
          max_size = 1024 * 1024, -- 1MB
          max_line_length = 500, -- Longitud máxima de línea
        },
      },

      win = {
        preview = {
          -- Asegurarse de que el título esté visible
          wo = {
            title = true, -- Mostrar título en la ventana
          },
        },
      },

      -- Incluir archivos ocultos por defecto en todas las fuentes relevantes
      sources = {
        explorer = {
          hidden = true, -- Mostrar archivos ocultos
          ignored = false, -- No ignorar archivos en .gitignore por defecto
        },
        files = {
          hidden = true, -- Mostrar archivos ocultos
        },
        grep = {
          hidden = true, -- Buscar en archivos ocultos
        },
      },

      -- Mantener las configuraciones personalizadas existentes
      toggles = {
        hidden = "h", -- Tecla para alternar archivos ocultos
        ignored = "i", -- Tecla para alternar archivos ignorados
      },
    },
  },
}
