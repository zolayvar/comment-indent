local ici = {}

ici.inner_indent_comment = function()
  local comment_delimiter = vim.api.nvim_command([[:set commentstring?]])
  print(comment_delimiter)
  vim.api.nvim_command([[:'<,'> s/\/\//\/\/  / | gv]])
end

ici.inner_unindent_comment = function()
  local comment_delimiter = vim.api.nvim_command([[:set commentstring?]])
  print(comment_delimiter)
  vim.api.nvim_command([[:'<,'> s/\/\//\/\/  / | gv]])
end

return ici