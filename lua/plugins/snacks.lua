-- Configura snacks.nvim, asegurando que el explorador muestre archivos ocultos/ignorados
return {
  "snacks.nvim", -- Nombre del plugin gestionado por el extra snacks_explorer
  opts = {
    explorer = {
      -- Configura las opciones para mostrar archivos ocultos e ignorados en el explorador
      -- Estas opciones provienen de la configuración base 'files' que 'explorer' hereda
      hidden = true,
      ignored = true,
      -- Puedes añadir/modificar otras opciones de 'explorer' aquí si es necesario
      -- tree = true, -- (ya es el valor por defecto)
      -- layout = { preset = "sidebar", preview = false }, -- (ya es el valor por defecto)
    },
  },
}
