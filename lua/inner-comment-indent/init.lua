local ici = {}

ici.get_comment_delimiter = function()
  -- this should be something like "// %s"
  local cstring = vim.api.nvim_buf_get_option(0, "commentstring")
  return cstring:gsub("%s", "")
end

ici.inner_indent_comment = function()
  local comment_delimiter = ici.get_comment_delimiter()
  vim.api.nvim_command([[:'<,'> s/]] .. comment_delimiter .. [[/]] .. comment_delimiter .. [[  / | gv]])
end

ici.inner_unindent_comment = function()
  local comment_delimiter = ici.get_comment_delimiter()
  vim.api.nvim_command([[:'<,'> s/]] .. comment_delimiter .. [[  /]] .. comment_delimiter .. [[/ | gv]])
end

return ici