" Allows for Syntax highlighting
syntax on

" Compile and Run key map
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>

" Allows for full screen
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 

" Allows for windows clipboard compatibility
set clipboard=unnamed

" Disables annoying backspace feature
set backspace=2

" Numbers code lines
set ruler
set number

" Tabs to spaces
set expandtab
set tabstop=4

" Font settings
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
    set guioptions-=m " Menubar
    set guioptions-=T " Toolbar
    set guioptions-=r " Scrollbar
  endif
endif

" Configuring python settings for plugins
set pythonthreehome=C:\Users\nzhan\AppData\Local\Programs\Python\Python36-32
set pythonthreedll=C:\Users\nzhan\AppData\Local\Programs\Python\Python36-32.dll

" Vim-Plug
call plug#begin('~/.vim/plugged')

" Auto Pairs
" Plug 'rstacruz/vim-closer'
Plug 'jiangmiao/auto-pairs'

" File Manager
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Colorscheme
" Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'

" Bar
Plug 'itchyny/lightline.vim'

" Undo Tree
Plug 'https://github.com/mbbill/undotree.git'

" Syntax check
Plug 'scrooloose/syntastic'

" COC -- Snippets + Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Configuring Clang complete
let g:clang_library_path='C:\MinGW\lib'

" Configuring Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Configuring default colorscheme
" colorscheme nord
set termguicolors
let ayucolor="mirage"
colorscheme ayu

" Configuring bar
set laststatus=2
set noshowmode
let g:lightline = {'colorscheme': 'ayu_light'}
