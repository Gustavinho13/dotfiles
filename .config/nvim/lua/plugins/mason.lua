local setup, mason = pcall(require, "mason")
if not setup then
  return
end

local lsp_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not lsp_status then
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "sumneko_lua",
    "clangd",
    "pyright",
  }
})
