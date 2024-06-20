return   {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() 
	    local map = vim.api.nvim_set_keymap
	    vim.g.barbar_auto_setup = false 
	    map('n', '<C-h>', '<Cmd>BufferPrevious<CR>', {noremap = true, silent = true, desc = "Navigate to previous buffer"})
	    map('n', '<C-l>', '<Cmd>BufferNext<CR>', {noremap = true, silent = true, desc = "Navigate to next buffer"})
	    map('n', '<leader>bd', '<Cmd>bd<CR>', {noremap = true, silent = true, desc = "Delete current buffer"})
    end,

    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  }
