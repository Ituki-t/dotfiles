return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',

    keys = {
      {
        '<leader>tt',
        '<cmd>ToggleTerm<CR>',
        desc = 'Toggle Terminal',
      },
    },

    opts = {
      size = 15,
      open_mapping = [[<C-\>]],
      direction = 'horizontal',
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      close_on_exit = true,
      shade_terminals = false,
    },
  },
}
