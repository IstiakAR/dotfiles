--Run Assembly program in a terminal with <F1>
vim.api.nvim_set_keymap("n", "<F1>",
  ":w<CR>:lcd %:h<CR>:belowright 15split | terminal nasm -f elf64 % && ld %:t:r.o -o %:t:r && ./%:t:r <CR>i",
  { noremap = true, silent = true })

--Quit with <F4>
vim.api.nvim_set_keymap("n", "<F4>", ":q<CR>", { noremap = true, silent = true })

--Save file with <F5>
vim.api.nvim_set_keymap("n", "<F5>", ":w<CR>", { noremap = true, silent = true })

--Run C++ program in a terminal with <F8>
vim.api.nvim_set_keymap("n", "<F8>",
  ":w<CR>:lcd %:h<CR>:belowright 12split | terminal bash -c 'g++ % -o main && { ./main || echo -e \"\\033[31mRuntime error: $?\\033[0m\"; } || echo -e \"\\033[31mCompilation failed\\033[0m\" && g++ % -o main'<CR>i",
  { noremap = true, silent = true })

--Run Python in a terminal with <F9>
vim.api.nvim_set_keymap("n", "<F9>",
  ":w<CR>:lcd %:h<CR>:belowright 12split | terminal python % <CR>i",
  { noremap = true, silent = true })

--Run Ruby in a terminal with <F10>
vim.api.nvim_set_keymap("n", "<F10>",
  ":w<CR>:lcd %:h<CR>:belowright 12split | terminal ruby -e 'Dir[\"**/*.rb\"].each { |file| load file }' <CR>i",
  { noremap = true, silent = true })

-- Run java program in a terminal with <F11>
vim.api.nvim_set_keymap("n", "<F11>",
  ":w<CR>:lcd %:h<CR>:belowright 15split | terminal javac % && java %:t:r || echo 'Compilation failed'<CR>i",
  { noremap = true, silent = true })

-- Run JavaFX project in a terminal with <F12>
vim.api.nvim_set_keymap("n", "<F12>",
  ":w<CR>:execute ':terminal (cd ~/Documents/JAVA_PROJECT && javac -d bin -cp \"lib/*\" $(find src -name \"*.java\") && java --module-path lib --add-modules javafx.controls,javafx.graphics,javafx.media -cp \"bin:lib/*\" Main)' | startinsert<CR>",
  { noremap = true, silent = true })
