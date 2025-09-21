return {
  'iamcco/markdown-preview.nvim',
  event = 'VeryLazy',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = 'cd app && npm install',
  config = function()
    vim.g.mkdp_browser = 'firefox'
    -- -- Optional configuration
    -- vim.g.mkdp_auto_start = 0
    -- vim.g.mkdp_auto_close = 1
    -- vim.g.mkdp_refresh_slow = 0
    -- vim.g.mkdp_command_for_global = 0
    -- vim.g.mkdp_open_to_the_world = 0
    -- vim.g.mkdp_open_ip = ''
    -- vim.g.mkdp_browser = ''
    -- vim.g.mkdp_echo_preview_url = 0
    -- vim.g.mkdp_browserfunc = ''
    -- vim.g.mkdp_preview_options = {
    --   mkit = {},
    --   katex = {},
    --   uml = {},
    --   maid = {},
    --   disable_sync_scroll = 0,
    --   sync_scroll_type = 'middle',
    --   hide_yaml_meta = 1,
    --   sequence_diagrams = {},
    --   flowchart_diagrams = {},
    --   content_editable = false,
    --   disable_filename = 0,
    --   toc = {}
    -- }
    -- vim.g.mkdp_markdown_css = ''
    -- vim.g.mkdp_highlight_css = ''
    -- vim.g.mkdp_port = ''
    -- vim.g.mkdp_page_title = '「${name}」'
    -- vim.g.mkdp_filetypes = { 'markdown' }

    -- Keymaps
    vim.keymap.set('n', '<leader>mp', ':MarkdownPreview<CR>', { desc = '[M]arkdown [P]review' })
    vim.keymap.set('n', '<leader>ms', ':MarkdownPreviewStop<CR>', { desc = '[M]arkdown [S]top preview' })
    vim.keymap.set('n', '<leader>mt', ':MarkdownPreviewToggle<CR>', { desc = '[M]arkdown [T]oggle preview' })
  end,
}
