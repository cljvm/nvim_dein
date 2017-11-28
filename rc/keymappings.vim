nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap g; g;zz
nnoremap g, g,zz

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Strip all trailing whitespace in the current file
nnoremap <silent> <Leader>q :%s/\s\+$//e<CR>:let @/=''<CR>

" Modify all the indents
nnoremap <Leader>= gg=G

noremap <C-Tab> :<C-u>tabnext<CR>
inoremap <C-Tab> <C-o>:tabnext<CR>
cnoremap <C-Tab> <C-c>:tabnext<CR>

nnoremap <silent> <Space> @=(foldlevel('.') ? 'za' : '\<Space>')<CR>
" vnoremap <Space> zf

nnoremap <Leader>n :set relativenumber!<CR>

"xmap ga <Plug>(EasyAlign)
"nmap ga <Plug>(EasyAlign)

" help
nnoremap <silent><F1> :call owl#toggle_help()<CR>
nnoremap <Leader>hh :call owl#toggle_help()<CR>
nnoremap <Leader>hk :Maps<CR>

" buffer
nnoremap <leader>bl :buffers<CR> " buffer list
nnoremap <leader>bf :bfirst<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bw :bwipeout<CR>
nnoremap <Leader>bcn :call owl#copy_buffer_name()<CR>
nnoremap <Leader>by mxggyG`x<CR>

" windows
nnoremap <Leader>w <C-w>

" paste
cnoremap <C-y> <C-r>*
