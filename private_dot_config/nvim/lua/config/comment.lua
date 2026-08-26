local M = {}

function M.setup()
  require("Comment").setup()
  local comment_ft = require("Comment.ft")
  comment_ft({ "reactjavascript", "typescriptreact" }, { "// %s", "{/* %s */}" })
end

return M
