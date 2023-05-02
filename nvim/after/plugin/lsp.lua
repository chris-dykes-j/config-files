local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false
})

lsp.ensure_installed({
    'tsserver',
    'rust_analyzer',
    'csharp_ls',
    'eslint'
})

local cmp = require('cmp')

local function custom_confirm_key_behavior(fallback)
    if cmp.visible() then
        cmp.confirm({ select = true })
    else
        fallback()
    end
end

local cmp_mappings = {
    ['<CR>'] = cmp.mapping(custom_confirm_key_behavior, { 'i', 's' }),
    ['<Tab>'] = cmp.mapping(custom_confirm_key_behavior, { 'i', 's' }),
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
}

cmp.setup({
    mapping = cmp_mappings,
})

lsp.setup_nvim_cmp({
  select_behavior = 'insert'
})

lsp.nvim_workspace()

lsp.setup()
