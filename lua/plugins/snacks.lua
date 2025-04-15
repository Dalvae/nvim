-- Configura snacks.nvim, asegurando que el explorador muestre archivos ocultos/ignorados
return {
  "snacks.nvim", -- Nombre del plugin gestionado por el extra snacks_explorer
  opts = function(_, opts)
    -- Asegúrate de que la tabla 'explorer' exista en las opciones
    opts.explorer = opts.explorer or {}

    -- Configura las opciones para mostrar archivos ocultos e ignorados en el explorador
    -- Estas opciones provienen de la configuración base 'files' que 'explorer' hereda
    opts.explorer.hidden = true
    opts.explorer.ignored = true

    -- Puedes añadir/modificar otras opciones de 'explorer' aquí si es necesario
    -- opts.explorer.tree = true -- (ya es el valor por defecto)
    -- opts.explorer.layout = { preset = "sidebar", preview = false } -- (ya es el valor por defecto)

    -- Devuelve las opciones modificadas
    return opts
  end,
}
