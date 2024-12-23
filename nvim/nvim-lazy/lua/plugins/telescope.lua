local builtin = require('telescope.builtin')

return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
      { 'n', '<leader>ff', builtin.find_files, {} },
      { 'n', '<leader>fg', builtin.live_grep, {} },
  }
}
