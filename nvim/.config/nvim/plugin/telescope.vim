lua require("carloskvasir")

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string({ search = vim.fn.expand("<cword>") })<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>vrc :lua require('carloskvasir.telescope').search_dotfiles()<CR>
nnoremap <leader>va :lua require('carloskvasir.telescope').anime_selector()<CR>
nnoremap <leader>gc :lua require('carloskvasir.telescope').git_branches()<CR>
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fl <cmd>Telescope git_files<cr>

nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>gsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>grr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>grn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>gh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>gca :lua vim.lsp.buf.code_action()<CR>
