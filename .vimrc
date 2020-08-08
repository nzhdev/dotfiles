noh
syntax on
set clipboard=unnamedplus
set t_Co=16
set nocompatible
set showmode
set showcmd
set ruler
set number
set cursorline
set expandtab
set noshiftround
set lazyredraw
set magic
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set modelines=0
set formatoptions=tqn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cmdheight=1
set laststatus=2
set backspace=indent,eol,start
set list
set listchars=tab:\│\ 
set matchpairs+=<:>
set statusline=%1*\ file\ %3*\ %f\ %4*\ 
set statusline+=%=\ 
set statusline+=%3*\ %l\ of\ %L\ %2*\ line\ 
set scrolloff=8
nmap <C-S> :w<CR>
nmap <C-_> :noh<CR>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
nmap <C-Up> 8k
nmap <C-Down> 8j
nmap <C-O> o<Esc>
nmap <C-Z> u
nmap <C-Y> <C-R>
nmap <C-F> /
nmap <C-H> i<C-W><Esc>
nmap <F3> :set invnumber<CR>
nmap <F4> :q<CR>
imap <C-S> <Esc>:w<CR>a
imap <C-_> <Esc>:noh<CR>a
imap <S-Left> <Esc>lv<Left>
imap <S-Right> <Esc>lv<Right>
imap <C-Up> <Esc>8ka
imap <C-Down> <Esc>8ja
imap <C-O> <Esc>o
imap <C-Z> <Esc>ua
imap <C-Y> <Esc><C-R>a
imap <Nul> <C-N>
imap <C-F> <Esc>/
imap <C-H> <C-W>
imap <C-V> <Esc>pa
imap <F3> <Esc>:set invnumber<CR>a
imap <F4> <Esc>:q<CR>
vmap <C-Up> 8k
vmap <C-Down> 8j
hi linenr ctermfg=8
hi cursorline cterm=NONE
hi cursorlinenr ctermfg=15
hi comment ctermfg=8
hi pmenu ctermbg=0 ctermfg=NONE
hi pmenusel ctermbg=4 ctermfg=0
hi pmenusbar ctermbg=0
hi pmenuthumb ctermbg=7
hi matchparen ctermbg=black ctermfg=NONE
hi search ctermbg=0
hi statusline ctermbg=0 ctermfg=NONE
hi statuslinenc ctermbg=0 ctermfg=0
hi user1 ctermbg=1 ctermfg=0
hi user2 ctermbg=4 ctermfg=0
hi user3 ctermbg=0 ctermfg=NONE
hi user4 ctermbg=NONE ctermfg=NONE
hi group1 ctermbg=NONE ctermfg=0
autocmd colorscheme * hi clear cursorline
match group1 /\t/

map <F9> :!g++ -std=c++17 -g % -o %:r <bar> clear <CR>
map <F10> :!./%:r <CR>
map <F8> :!g++ -std=c++17 -g -Wall -Wextra -pedantic -std=c++11 -O2 -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector % -o %:r <bar> clear <CR>


call plug#begin('~/.vim/plugged')
    
    " Auto pairs
    Plug 'jiangmiao/auto-pairs'
    " File Explorer
    Plug 'scrooloose/NERDTree', {'on': 'NERDTreeToggle'}    
    " Undo Tree
    Plug 'mbbill/undotree'
    " COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}    
    " Better terminal support
    Plug 'kassio/neoterm'

call plug#end()

" vimrc for wsl
" Disables swap file creation
set noswapfile

" Fixes colorscheme not loading properly
set background=dark

" Enables mouse support
set mouse=a

" Cursor configuration
" if &term =~ '^xterm'
          " solid underscore
  "        let &t_SI .= "\<Esc>[0 q"
          " solid block
   "       let &t_EI .= "\<Esc>[2 q"
          " 1 or 0 -> blinking block
          " 2 solid block
          " 3 -> blinking underscore
          " 4 -> solid underscore
          " Recent versions of xterm (282 or above) also support
          " 5 -> blinking vertical bar
          " 6 -> solid vertical bar
" endif

" Allows for Syntax highlighting
syntax on

" Uses system clipboard
set clipboard=unnamedplus

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
        augroup WSLYank
                autocmd!
                autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
        augroup END
endif"

" Disables annoying backspace feature
set backspace=2

" Numbers code lines
set ruler
set number

" Tabs to spaces
set expandtab
set tabstop=4 

" Show current mode
set showmode

" Vim Plug
call plug#begin('~/.vim/plugged')
    
    " Auto pairs
    Plug 'jiangmiao/auto-pairs'
    " COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}    
    " Better terminal support
    Plug 'kassio/neoterm'
    " Bar
    Plug 'itchyny/lightline.vim'
    " Colorscheme
    Plug 'joshdick/onedark.vim'
    
call plug#end()

" C++ hotkeys
map <F8> :!g++ -std=c++17 -g -Wall -Wextra -pedantic -std=c++11 -O2 -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector % -o %:r <bar> clear <CR>
map <F9> :!g++ -std=c++17 -g % -o %:r <bar> clear <CR>
map <F10> :!./%:r <CR>

" Configuring default colorscheme
if (has("autocmd") && !has("gui_running"))
        augroup colorset
                autocmd!
                let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7"  }
                autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white  }) " `bg` will not be styled since there is no `bg` setting
        augroup END
endif"

colorscheme onedark

" Configuring bar
set laststatus=2
set cmdheight=1
set noshowmode
let g:lightline = {'colorscheme': 'ayu_light'}
