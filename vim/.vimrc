set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'   " required

" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'easymotion/vim-easymotion'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

" Tested plugins
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set backspace=indent,eol,start
set encoding=utf-8  
set clipboard=unnamed
map <C-t> :NERDTreeTabsToggle<CR>
let g:airline_powerline_fonts = 1

  " Movement {{{
  "split navigations
  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-L> <C-W><C-L>
  nnoremap <C-H> <C-W><C-H>
  " }}}
  " Status Line {{{
  set laststatus=2 " Always show status line
  set statusline=%F         " Path to the file
set statusline+=\ -\      " Separator
set statusline+=FileType: " Label
set statusline+=%y        " Filetype of the file
set statusline+=%=        " Switch to the right side
set statusline+=Current:\ %-4l\ Total:\ %-4L
" }}}
" Unmapping stuff {{{ 
" Unmapping arrows
inoremap <up> <nop>
nnoremap <up> <nop>
inoremap <down> <nop>
nnoremap <down> <nop>
inoremap <right> <nop>
nnoremap <right> <nop>
inoremap <left> <nop>
nnoremap <left> <nop>

" Changing to Normal mode
inoremap ii <esc>
inoremap <esc> <nop>
" }}}
" Search and Leader {{{
" Search
set hlsearch incsearch
" Leaders
let mapleader = ","
let maplocalleader = "m"
" }}}
" Folding {{{
nnoremap <Tab> % 
nnoremap <Space> za 
vnoremap <Space> za 
nnoremap <leader>z zMzvzz
" }}}
" Tabs {{{
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" }}}
" Python file settings - {{{
let g:SimpylFold_docstring_preview=1
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match ExtraWhitespace /\s\+$/
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 
augroup filetype_python
	autocmd!
	" Commenting
	autocmd FileType python nnoremap <buffer> <localleader>c I#<space><esc>
	" Folding
	autocmd FileType python setlocal foldmethod=indent
augroup END
" }}}
" Markdown file settings - {{{
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
" }}}
" Vimscript file settings - {{{
augroup filetype_vim
	autocmd!
	" Commenting
	autocmd FileType vim nnoremap <buffer> <localleader>c I"<space><esc>
	" Folding
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" Abbreviations {{{
iabbrev widht width
iabbrev lenght length
iabbrev heigth height
iabbrev ssig --<cr>Xavier Adam<cr>xa.adam@gmail.com
iabbrev --- &mdash;
" }}}
" Look and feel {{{
" GUI {{{  
" Font {{{
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
" }}}
" }}}
" Line numbers {{{
set relativenumber
set numberwidth=5

nnoremap <c-n> :call RelativeNumberToggle()<cr>
function! RelativeNumberToggle()
	set relativenumber!
    set number
endfunction
" }}}
" Highlighted lines {{{
set cursorline
set colorcolumn=80
"}}}
" Colorscheme {{{
syntax on
colorscheme seoul256 
colors seoul256 
" }}}
"}}}
