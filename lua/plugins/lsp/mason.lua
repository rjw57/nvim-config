-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

-- enable mason
mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
    border = "rounded",
  },
})

mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = {
    "astro",
    "clangd",
    "cssls",
    "denols",
    "emmet_ls",
    "eslint",
    "gopls",
    "html",
    "jdtls",
    "lua_ls",
    "luau_lsp",
    "pylsp",
    "rust_analyzer",
    "tailwindcss",
    "tsserver",
    "yamlls",
  },
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
})
