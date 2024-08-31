return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
      vim.keymap.set('n', '<leader><TAB>', ':BufferNext<cr>', { desc = 'Next Buffer' })
      vim.keymap.set('n', '<leader>b', ':BufferPick<cr>', { desc = 'Pick Buffer' })
      vim.keymap.set('n', '<leader>d', ':BufferClose<cr>', { desc = 'Close Buffer' })
      vim.keymap.set('n', '<leader>bb', ':BufferPin<cr>', { desc = 'Pin Buffer' })
      vim.keymap.set('n', '<leader>bp', ':BufferMovePrevious<cr>', { desc = 'Move Buffer Previous' })
      vim.keymap.set('n', '<leader>bn', ':BufferMoveNext<cr>', { desc = 'Move Buffer Next' })
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
