local setup, signature = pcall(require, "lsp-signature")
if not setup then
  return
end

lsp_signature_cfg = {
    hint_prefix = "",
    floating_window = true 
}
signature.setup(lsp_signature_cfg)
