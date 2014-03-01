" General syntax highlighting
syntax on


" JSON files are JavaScript
au BufNewFile,BufRead *.json set filetype=javascript
" Capistrano file is Ruby
au BufNewFile,BufRead Capfile set filetype=ruby
au BufNewFile,BufRead Vagrantfile set filetype=ruby
" Apache config
au BufNewFile,BufRead *.conf set filetype=apache
" Decompiled Java files
au BufNewFile,BufRead *.jad set filetype=java

" Show line numbers
set number

" Highligh items on search
set hlsearch

" No line wrapping
set nowrap
 
" I'm working on dark background
set background=dark

" Autocompletion selected element has blue background
highlight PmenuSel ctermbg=blue


" Enable auto indentation
set autoindent

" Always show tabs bar 
set showtabline=2

" Map F1-F9 keys to tab browsing
map <F1> :tabfirst<CR>
map <F2> <F1>gt
map <F3> <F1>3gt
map <F4> <F1>4gt
map <F5> <F1>5gt
map <F6> <F1>6gt
map <F7> <F1>7gt
map <F8> <F1>8gt
map <F9> <F1>9gt
map <F10> <F1>10gt
map <F12> :tablast<CR>

" Use 2 space characters as tab
set expandtab
set shiftwidth=2
set softtabstop=2

" Enable vimjde (http://www.vim.org/scripts/script.php?script_id=1213 and http://blog.vinceliu.com/2007/08/vim-tips-for-java-3-use-omni-completion.html) plugin for java
"helptags /usr/share/vim/vim73/doc/
helptags ~/.vim/doc/





" From https://coderwall.com/p/if9mda - allows for code paste without a need for invoking :set paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
