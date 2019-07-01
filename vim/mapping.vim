"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap ; l
noremap l k
noremap k j
noremap j h

noremap <C-W>; <C-W>l
noremap <C-W>l <C-W>k
noremap <C-W>k <C-W>j
noremap <C-W>j <C-W>h

noremap <C-W>: <C-W>L
noremap <C-W>L <C-W>K
noremap <C-W>K <C-W>J
noremap <C-W>J <C-W>H

noremap <Tab> <C-W>w

let mapleader = " "
noremap <Leader>h :nohl<CR>
noremap <Leader>b :make<CR>
noremap <Leader>t :make test<CR>

" NerdTree
map <Leader>e :NERDTreeToggle<CR>

" Ctags
command GenerateCtags :! ctags -R --c++-kinds=+p --fields=+iaS --extras=+q .
nmap <F8> :TagbarToggle<CR>

" Find
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --glob "!tags" --glob "!build/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)