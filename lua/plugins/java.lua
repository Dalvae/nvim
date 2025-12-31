-- ~/.config/nvim/lua/plugins/java.lua
return {
  -- Deshabilitar nvim-jdtls de LazyVim (conflicta con nvim-java)
  { "mfussenegger/nvim-jdtls", enabled = false },

  {
    "nvim-java/nvim-java",
  dependencies = {
    "nvim-java/lua-async-await",
    "nvim-java/nvim-java-core",
    "nvim-java/nvim-java-test",
    "nvim-java/nvim-java-dap",
    "MunifTanjim/nui.nvim",
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("java").setup({
      jdk = {
        auto_install = true,
      },
    })

    require("lspconfig").jdtls.setup({
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-24", -- Actualizado para Java 24
                path = "/usr/lib/jvm/java-24-openjdk/", -- Verifica esta ruta
              },
              {
                name = "JavaSE-21",
                path = "/usr/lib/jvm/java-21-openjdk/",
              },
              {
                name = "JavaSE-17",
                path = "/usr/lib/jvm/java-17-openjdk/",
              },
            },
          },
          compile = {
            nullAnalysis = {
              mode = "automatic",
            },
          },
          signatureHelp = { enabled = true },
          completion = {
            favoriteStaticMembers = {
              "org.junit.jupiter.api.Assertions.*",
              "java.util.Objects.requireNonNull",
              "java.util.Objects.requireNonNullElse",
            },
          },
          sources = {
            organizeImports = {
              starThreshold = 9999,
              staticStarThreshold = 9999,
            },
          },
          contentProvider = { preferred = "fernflower" },
          eclipse = {
            downloadSources = true,
          },
          maven = {
            downloadSources = true,
          },
          references = {
            includeDecompiledSources = true,
          },
          inlayHints = {
            parameterNames = {
              enabled = "all",
            },
          },
          -- Añadir handler personalizado para hover
          handlers = {
            ["textDocument/hover"] = function(_, result, ctx, config)
              if result and result.contents then
                local content = result.contents

                if type(content) == "table" and content.value then
                  local value = content.value

                  if value:match("java%.lang%.") then
                    -- Limpiar referencias java.lang innecesarias
                    content.value = value:gsub("java%.lang%.", "")
                  end
                end
              end
              return vim.lsp.handlers.hover(_, result, ctx, config)
            end,
          },
        },
      },
    })
  end,
  },
}
