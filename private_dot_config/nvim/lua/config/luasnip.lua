local M = {}

local ls = require("luasnip")

local function define_keymaps()
  local map = vim.keymap.set
  local opts = { silent = true }

  map({ "i" }, "<C-K>", function()
    ls.expand()
  end, opts)

  map({ "i", "s" }, "<C-L>", function()
    ls.jump(1)
  end, opts)

  map({ "i", "s" }, "<C-J>", function()
    ls.jump(-1)
  end, opts)

  map({ "i", "s" }, "<C-E>", function()
    if ls.choice_active() then
      ls.change_choice(1)
    end
  end, opts)
end

local function define_snippets()
  local s = ls.snippet
  local t = ls.text_node
  local i = ls.insert_node

  ls.add_snippets("javascript", {
    s("type", { t('/** @type {import("'), i(1), t('")} */') }),
  })
end

function M.setup()
  define_keymaps()
  define_snippets()
end

return M
