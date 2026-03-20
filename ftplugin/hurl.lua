vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'hurl' },
  callback = function() vim.treesitter.start() end,
})
