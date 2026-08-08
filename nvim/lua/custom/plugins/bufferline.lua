return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        separator_style = "thin",
        show_buffer_close_icons = true,
        show_close_icon = false,

        offsets = {
          {
            filetype = "neo-tree",
            text = "Explorer",
            highlight = "Directory",
            separator = true,
          },
        },
      },
    },
    keys = {
      {
        "<C-l>",
        "<cmd>BufferLineCycleNext<CR>",
        desc = "Next buffer",
      },
      {
        "<C-h>",
        "<cmd>BufferLineCyclePrev<CR>",
        desc = "Previous buffer",
      },
      {
        "<C-S-q>",
        "<cmd>bdelete<CR>",
        desc = "Close buffer",
      },
    },
  },
}
