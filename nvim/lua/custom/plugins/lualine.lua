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
          left = "|",
          right = "|",
        },
        section_separators = {
          left = "",
          right = "",
        },
      },

      sections = {
        lualine_a = { "mode" },

        lualine_b = {
          "branch",
          "diff",
        },

        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },

        lualine_x = {
          "diagnostics",
        },

        lualine_y = {
          "location",
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
