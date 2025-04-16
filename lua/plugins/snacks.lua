-- Configuración para snacks.nvim
return {
  "snacks.nvim",
  opts = {
    -- Configuración específica para el componente explorador
    explorer = {
      hidden = true, -- Mostrar archivos ocultos por defecto
      ignored = true, -- Mostrar archivos ignorados por git por defecto
      -- Otras opciones del explorador pueden ir aquí si es necesario
    },
    -- No necesitamos configurar 'picker' explícitamente aquí
    -- a menos que queramos sobreescribir vim.ui.select
  },
}
