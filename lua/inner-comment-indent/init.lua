local ci = {}

ci.get_comment_delimiter = function()
  -- this should be something like "// %s" or "--%s"
  local cstring = vim.api.nvim_buf_get_option(0, "commentstring")
  local delimiter, _ = string.gsub(cstring, "%%s", "")
  local escaped_delimiter, _ = string.gsub(delimiter, "/", "\\/")
  return escaped_delimiter
end

ci.indent_comment = function()
  local d = ci.get_comment_delimiter()
  vim.api.nvim_command([[:'<,'> s/]] .. d .. [[/]] .. d .. [[  /]])
  vim.api.nvim_input([[gv]])
end

ci.unindent_comment = function()
  local d = ci.get_comment_delimiter()
  vim.api.nvim_command([[:'<,'> s/]] .. d .. [[  /]] .. d .. [[/]])
  vim.api.nvim_input([[gv]])
end

return ci