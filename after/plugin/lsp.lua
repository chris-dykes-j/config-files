local lsp = require 'lsp-zero'

lsp.preset 'recommended'

lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
  'csharp_ls'
})

lsp.nvim_workspace()

lsp.setup()
