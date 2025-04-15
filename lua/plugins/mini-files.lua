-- Configura mini.files para mostrar archivos ocultos
return {
  "echasnovski/mini.files",
  opts = function(_, opts)
    -- Asegúrate de que la ventana principal muestre archivos ocultos
    opts.windows = opts.windows or {}
    opts.windows.main = opts.windows.main or {}
    opts.windows.main.show_hidden = true

    -- Opcional: Asegúrate de que la ventana de vista previa también muestre archivos ocultos
    opts.windows.preview = opts.windows.preview or {}
    opts.windows.preview.show_hidden = true
  end,
}
