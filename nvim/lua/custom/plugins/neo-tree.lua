return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      {
        "<leader>e",
        "<cmd>Neotree toggle filesystem left<CR>",
        desc = "Explorer",
      },
    },
    opts = {
      enable_git_status = true,

      default_component_configs = {
        git_status = {
          symbols = {
            added = "A",
            modified = "M",
            deleted = "D",
            renamed = "R",
            untracked = "U",
            ignored = "I",
            unstaged = "",
            staged = "S",
            conflict = "C",
          },
        },
      },

      filesystem = {
        use_libuv_file_watcher = true,
        window = {
          width = 25,
        },
        follow_current_file = {
          enabled = true,
        },
      },
    },
  },
}
