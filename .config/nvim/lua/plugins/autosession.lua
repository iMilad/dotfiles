return {
  'rmagatti/auto-session',
  config = function()
    local auto_session = require 'auto-session'

    auto_session.setup {
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { '~/', '~/Downloads', '~/Documents', '~/Desktop/' },
    }

    local keymap = vim.keymap

    keymap.set('n', '<leader>pr', '<cmd>SessionRestore<CR>', { desc = '[P]roject [R]estore session for cwd' }) -- restore last workspace session for current directory
    keymap.set('n', '<leader>ps', '<cmd>SessionSave<CR>', { desc = '[P]roject [S]ave session for auto session root dir' }) -- save workspace session for current working directory
  end,
}
