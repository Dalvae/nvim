-- Plugin para mostrar el contexto de Treesitter en la parte superior
return {
  "nvim-treesitter/nvim-treesitter-context",
  -- Opcional: Configuración personalizada
  opts = {
    -- mode = "cursor", -- Muestra el contexto basado en la posición del cursor
    -- max_lines = 3, -- Número máximo de líneas a mostrar
    -- separator = "-", -- Separador entre líneas de contexto
  },
  -- Cargar después de Treesitter (implícito por dependencia si no se especifica evento/cmd)
  -- O puedes cargarlo explícitamente de forma diferida si lo prefieres:
  -- event = "VeryLazy",
}
