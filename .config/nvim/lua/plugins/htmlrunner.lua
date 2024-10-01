-- Custom commands

vim.api.nvim_create_user_command("F", function()
  -- Get the current buffer's file name
  local file = vim.api.nvim_buf_get_name(0)

  -- Check if the file is an HTML file
  if file:match("%.html$") then
    -- Open the file in Firefox
    os.execute("firefox " .. file)
  else
    print("Current file is not an HTML file")
  end
end, {})

return {}
