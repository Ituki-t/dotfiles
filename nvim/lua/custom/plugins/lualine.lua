return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      options = {
        theme = "kanagawa",
        globalstatus = true,
        component_separators = {
          left = "",
          right = "",
        },
        section_separators = {
          left = "",
          right = "",
        },
      },

      sections = {
        lualine_a = { "mode" },

        lualine_b = {
          {
            "branch",
            color = {
              fg = "#1F1F28",
              bg = "#D27E99",
              gui = "bold",
            },
          },
          -- {
          --   "diff",
          --   color = {
          --     fg = "#1F1F28",
          --     bg = "#D27E99",
          --     gui = "bold",
          --   },
          -- },
        },

        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },

        lualine_x = {
          "diagnostics",
          "filetype",
        },

        lualine_y = {
          {
          "location",
          color = {
            fg = "#1F1F28",
            bg = "#D27E99",
            gui = "bold",
          },
          },
        },

        lualine_z = {
          function()
            return " " .. os.date("%R")
          end,
        },

      },

      extensions = {
        "neo-tree",
        "lazy",
      },
    },
  },
}
