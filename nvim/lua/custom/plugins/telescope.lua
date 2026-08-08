return {
  {
    'nvim-telescope/telescope.nvim',
    opts = {
      defaults = {
        layout_strategy = 'horizontal',
        sorting_strategy = 'ascending',
        prompt_prefix = ' ',
        selection_caret = ' ',
        path_display = { 'smart' },
      },
    },
  },
}
