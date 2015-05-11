" Leader (done at the beginning so remaps will pick it up)
nnoremap <SPACE> <Nop>
let mapleader=" "

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'						" Vundle
Plugin 'altercation/vim-colors-solarized'		" Solarized Theme
Plugin 'tpope/vim-fugitive'						" Vim-Fugitive
Plugin 'SirVer/ultisnips'						" UltiSnips
Plugin 'honza/vim-snippets'						" Vim-Snippets
Plugin 'Valloric/YouCompleteMe'					" YouCompleteMe
Plugin 'kien/ctrlp.vim'							" Ctrl-P
Plugin 'scrooloose/nerdtree'					" NerdTree
Plugin 'scrooloose/nerdcommenter'				" NerdCommenter
Plugin 'scrooloose/syntastic'					" Syntastic
Plugin 'mattn/emmet-vim'						" Emmet
Plugin 'godlygeek/tabular'						" Tabular
Plugin 'tpope/vim-dispatch'						" Vim-Dispatch
Plugin 'pangloss/vim-javascript'				" Vim-Javascript
Plugin 'vim-ruby/vim-ruby'						" Vim-Ruby
Plugin 'tpope/vim-rails'						" Vim-Rails
Plugin 'iandoe/vim-osx-colorpicker'				" Vim-OSX-ColorPicker
Plugin 'tpope/vim-surround'						" Vim-Surround
Plugin 'bling/vim-airline'						" Vim-Airline
Plugin 'tpope/vim-markdown'						" Vim-Markdown
Plugin 'hail2u/vim-css3-syntax'					" Vim-CSS3-Sytax
Plugin 'Lokaltog/vim-easymotion'				" Vim-EasyMotion
Plugin 'Yggdroot/indentLine'					" Indent-Line
Plugin 'Raimondi/delimitMate' 					" DeliMate	
Plugin 'fatih/vim-go'							" Vim-GO
Plugin 'tpope/vim-leiningen'					" Leiningen for clojure
Plugin 'tpope/vim-fireplace'					" More clojure support
Plugin 'guns/vim-clojure-static'				" ^
Plugin 'guns/vim-clojure-highlight'				" ^
Plugin 'kien/rainbow_parentheses.vim'			" ^
Plugin 'vim-latex/vim-latex'					" Latex
call vundle#end()
filetype plugin indent on

" Vim-Rails
" nnoremap <leader>af :A<CR>
" nnoremap <leader>av :AV<CR>
" nnoremap <leader>rf :R<CR>
" nnoremap <leader>rv :RV<CR>
" nnoremap <leader>rk :Rake<CR>
" nnoremap <leader>re :Rextract 
" vnoremap <leader>re :Rextract 
" nnoremap <leader>ec :Econtroller<CR>
" nnoremap <leader>em :Emodel<CR>
" nnoremap <leader>et :Eunittest<CR>
" nnoremap <leader>ef :Efunctionaltest<CR>
" nnoremap <leader>ev :Eview<CR>
" nnoremap <leader>en :Eenvironment<CR>
" nnoremap <leader>eh :Ehelper<CR>
" nnoremap <leader>ej :Ejavascript<CR>
" nnoremap <leader>el :Elayout<CR>
" nnoremap <leader>es :Estylesheet<CR>
" nnoremap <leader>er :Etask<CR>

" Fugitive
nnoremap <leader>gs :Gstatus<CR><c-w><c-w>
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gps :Gpush<CR>
nnoremap <leader>gpl :Gpull<CR>

" Vim-OSX-ColorPicker
nnoremap <leader>cpr :ColorHEX<CR>

" UltiSnips
 let g:UltiSnipsExpandTrigger = "<leader>]"
 let g:UltiSnipsJumpForwardTrigger = "<leader>]"
 let g:UltiSnipsJumpBackwardTrigger = "<leader>["

" Colorpicker
let g:colorpicker_app = 'iTerm.app'

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip    
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Vim-Airline
set laststatus=2

" Vim-EasyMotion
map <Leader>e <Plug>(easymotion-w)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap s <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1

" Delimate
imap<leader><CR> <Plug>delimitMateJumpMany
imap<leader>,. <Plug>delimitMateS-Tab

"""""""""""""""""""""
"""""""" Non Plugin "
""""""""""""""""""""" 

syntax enable
syntax on

" Colors
colorscheme vividchalk
set background=dark

" Searching
hi Search cterm=NONE ctermfg=black ctermbg=yellow
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <leader>noh :noh<CR> 

" Numbering
set number
set relativenumber

" Autospacing
autocmd FileType ruby compiler ruby
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" Fast reload when tweaking vimrc
nnoremap <leader>src :source %<CR> 

" Changing/removing splits
nnoremap <leader>sv <c-w>H
nnoremap <leader>sh <c-w>K
nnoremap <leader>on :only<CR>

" Navigating splits
nnoremap <leader>wh <c-w>h
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l

" Make copy/paste not suck
noremap <leader>y "*y
noremap <leader>yy "*Y
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" Mimic emacs scroll other window down
nnoremap <leader>od <c-w><c-w><c-d><c-w><c-w>
nnoremap <leader>ou <c-w><c-w><c-u><c-w><c-w>

" Get help as a vertical split
nnoremap <leader>h :vert help

" Save and quit maps
nnoremap <leader>sa :w<CR>
nnoremap <leader>wq :wq<CR>
map Q :qa!<CR>

" GTD maps
" gtd mark item complete (single line, then visual)
nnoremap <leader>ic dd<c-w>lggp<c-w>h
vnoremap <leader>ic d<c-w>lggp<c-w>h
		" gtd quit
nnoremap <leader>gq :wa<CR>:qa<CR>

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Swap between last file and current file
nnoremap <leader>lf <c-^>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
