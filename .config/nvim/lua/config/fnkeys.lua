--Quit with <F4>
vim.api.nvim_set_keymap("n", "<F4>", ":q<CR>", { noremap = true, silent = true })

--Save file with <F5>
vim.api.nvim_set_keymap("n", "<F5>", ":w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-CR>", function()
  run_file()
end, { noremap = true, silent = true })

function run_file()
  vim.cmd("w") -- Save the file
  vim.cmd("lcd %:h") -- Change to file's directory

  local ext = vim.fn.expand("%:e") -- Get file extension
  local cmd = ""

  if ext == "cpp" then
    cmd =
      'bash -c \'g++ % -Wall -Wextra -Wshadow -Wconversion -Wfloat-equal -Wduplicated-cond -Wlogical-op -fsanitize=undefined -o main && { ./main || echo -e "\\033[31mRuntime error: $?\\033[0m"; } || echo -e "\\033[31mCompilation failed\\033[0m"\''
  elseif ext == "py" then
    cmd = "python %"
  elseif ext == "rb" then
    cmd = "ruby -e 'Dir[\"**/*.rb\"].each { |file| load file }'"
  elseif ext == "java" then
    cmd = "javac % && java %:t:r"
  elseif ext == "js" then
    cmd = "node %"
  elseif ext == "ts" then
    cmd = "tsc %"
  elseif ext == "rs" then
    cmd = "rustc % && ./$(basename % .rs)"
  elseif ext == "lua" then
    cmd = "lua %"
  elseif ext == "asm" then
    cmd = "nasm -f elf64 % -o main.o && gcc main.o -no-pie -o main && ./main"
  else
    vim.notify("No runner configured for this file type", vim.log.levels.INFO)
    return
  end

  vim.cmd("belowright 12split | terminal " .. cmd)
end
