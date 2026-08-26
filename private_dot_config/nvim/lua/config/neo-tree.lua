local M = {}

function M.setup()
  require("neo-tree").setup({
    window = {
      position = "right",
    },
    filesystem = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      },
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          "node_modules",
        },
        never_show = {
          ".git",
        },
      },
    },
  })
end

return M
