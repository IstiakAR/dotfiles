--Run Assembly program in a terminal with <F1>
vim.api.nvim_set_keymap("n", "<F1>",
  ":w<CR>:lcd %:h<CR>:belowright 15split | terminal nasm -f elf64 % && ld %:t:r.o -o %:t:r && ./%:t:r <CR>i",
  { noremap = true, silent = true })

--Run C++ program in a terminal with <F8>
vim.api.nvim_set_keymap("n", "<F8>",
  ":w<CR>:lcd %:h<CR>:belowright 10split | terminal g++ % -o main && ./main || echo 'Compilation failed'<CR>i",
  { noremap = true, silent = true })

--Save file with <F9>
vim.api.nvim_set_keymap("n", "<F9>", ":w<CR>", { noremap = true, silent = true })

--Quit with <F10>
vim.api.nvim_set_keymap("n", "<F10>", ":q<CR>", { noremap = true, silent = true })

-- Run java program in a terminal with <F11>
vim.api.nvim_set_keymap("n", "<F11>",
  ":w<CR>:lcd %:h<CR>:belowright 15split | terminal javac % && java %:t:r || echo 'Compilation failed'<CR>i",
  { noremap = true, silent = true })

-- Run Java program in a terminal with <F12>
vim.api.nvim_set_keymap("n", "<F12>",
  ":w<CR>:let mainClass = input('Enter the main class name: ') | execute ':terminal (cd %:h && javac $(find . -name ''*.java'') && java ' . mainClass . ')' | startinsert<CR>",
  { noremap = true, silent = true })
