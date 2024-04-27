require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  },
  github = {
        download_url_template = "https://github.moeyy.xyz/https://github.com/%s/releases/download/%s/%s"
    }
})

require("mason-lspconfig").setup({
  providers = {
        "mason.providers.client",
        -- "mason.providers.registry-api" -- This is the default provider. You can still include it here if you want, as a fallback to the client provider.
    },
  
})

  
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

