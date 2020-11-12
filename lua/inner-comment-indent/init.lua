local ici = {}

ici.inner_indent_comment = function()
  vim.api.nvim_command([[:'<,'> s/\/\//\/\/  / | gv]])
end

return ici