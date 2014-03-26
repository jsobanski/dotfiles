" Enable pathogen for convenient plugin installation
call pathogen#infect() 

" General syntax highlighting
syntax on

" Show on screen artifacts
set number        " line numbers
set laststatus=2  " permanent statusline
set showtabline=2 " permanent tabs

" Behaviours
set hlsearch      " highlighting items while searching
set autoindent    " auto indentation
set expandtab     " insert spaces whenever tab is pressed
set shiftwidth=2  " tab sets 2 spaces
set softtabstop=2

" No line wrapping
set nowrap

" minimum lines to keep above and below cursor
set scrolloff=3
 
" Colors
let g:solarized_termcolors=256  " Don't know what it does, but it's needed for good colors
set background=dark
colorscheme molokai           " And using solarized scheme

" Syntax highlighting
autocmd BufNewFile,BufRead Capfile set filetype=ruby       " Capistrano file is Ruby
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby   " Vagrant
autocmd BufNewFile,BufRead *.conf set filetype=apache      " Apache config
autocmd BufNewFile,BufRead *.jad set filetype=java         " Decompiled Java files

" Folding
autocmd filetype json setlocal foldmethod=syntax  
autocmd filetype json setlocal foldlevel=2       

" Allows for code paste without messing up indentation (without a need for invoking :set paste)
" from https://coderwall.com/p/if9mda
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction


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



" Doing IDE
" F10 enters 'project mode'
map <F10> :Rooter<CR>:NERDTree<CR> 
"/src<CR>o /main<CR>o  /java<CR>O
"set mouse=a                         " Enable mouse




"""""""""""""""" PLUGINS CONFIG """"""""""""""""


" vimjde
" Enable vimjde (http://www.vim.org/scripts/script.php?script_id=1213 and http://blog.vinceliu.com/2007/08/vim-tips-for-java-3-use-omni-completion.html) plugin for java
"helptags /usr/share/vim/vim73/doc/
"helptags ~/.vim/doc/


" vim-rooter plugin
let g:rooter_patterns = ['pom.xml', '.git/']  " search for these files as project roots


" NERDTree 
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  " close NERDTree if it's the last buffer remaining
autocmd BufNewFile,BufRead * :NERDTreeMirror    " when multiple tabs, then each new tab should mirror NERDTree
let NERDTreeMinimalUI = 1                       " Don't display help at the top
let g:NERDTreeWinSize = 50 


" Tagbar
autocmd FileType java,ruby,javascript :TagbarOpen " Always open for these files
let g:tagbar_compact = 1                          " Don't display help at the top
let Tlist_Use_SingleClick = 1


" javacomplete
setlocal omnifunc=javacomplete#Complete       " Set autocomplete function
set completeopt=menu,preview,longest          " initial completion value is nothin/current
