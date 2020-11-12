local ici = {}

ici.get_comment_delimiter = function()
  -- return vim.api.nvim_get_option(":echo split(&commentstring, '%s')[0]")
  print(vim.api.nvim_get_option("&commentstring"))
  return vim.api.nvim_get_option("&commentstring")
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