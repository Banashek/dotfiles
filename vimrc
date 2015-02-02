" Leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'          " Vundle
Plugin 'tpope/vim-fugitive'         " Vim-Fugitive
Plugin 'SirVer/ultisnips'           " UltiSnips
Plugin 'honza/vim-snippets'         " Vim-Snippets
Plugin 'Valloric/YouCompleteMe'     " YouCompleteMe
Plugin 'kien/ctrlp.vim'             " Ctrl-P
Plugin 'scrooloose/nerdtree'        " NerdTree
Plugin 'scrooloose/nerdcommenter' 	" NerdCommenter
Plugin 'scrooloose/syntastic'       " Syntastic
Plugin 'mattn/emmet-vim'            " Emmet
Plugin 'godlygeek/tabular'          " Tabular
Plugin 'OrangeT/vim-csharp'         " Vim-CSharp
Plugin 'tpope/vim-dispatch'         " Vim-Dispatch
Plugin 'pangloss/vim-javascript'    " Vim-Javascript
Plugin 'vim-ruby/vim-ruby'          " Vim-Ruby
Plugin 'tpope/vim-rails'            " Vim-Rails
Plugin 'iandoe/vim-osx-colorpicker' " Vim-OSX-ColorPicker
Plugin 'tpope/vim-surround'         " Vim-Surround
Plugin 'bling/vim-airline' 			" Vim-Airline
Plugin 'Lokaltog/vim-easymotion' 	" Vim-EasyMotion
Plugin 'klen/python-mode' 			" Python-Mode
Plugin 'Yggdroot/indentLine' 		" Indent-Line
Plugin 'JarrodCTaylor/vim-python-test-runner' " Python test runner
Plugin 'Raimondi/delimitMate' 					" DeliMate	
call vundle#end()
filetype plugin indent on

let g:ycm_server_keep_logfiles = 1
" Vim-OSX-ColorPicker
nnoremap <leader>cph :ColorHEX<CR>
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
map <Leader>w <Plug>(easymotion-w)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap s <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1

" Python-Test-Runner
nnoremap<Leader>da :DjangoTestApp<CR>
nnoremap<Leader>df :DjangoTestFile<CR>
nnoremap<Leader>dc :DjangoTestClass<CR>
nnoremap<Leader>dm :DjangoTestMethod<CR>
nnoremap<Leader>nf :NosetestFile<CR>
nnoremap<Leader>nc :NosetestClass<CR>
nnoremap<Leader>nm :NosetestMethod<CR>
nnoremap<Leader>nb :NosetestBaseMethod<CR>
nnoremap<Leader>nr :RerunLastTests<CR>

" Pymode
"  fix auto-showing of documentation which breaks ultisnips
set completeopt=menu

" Delimate
imap<leader><CR> <Plug>delimitMateJumpMany
imap<leader>,. <Plug>delimitMateS-Tab

" My Edits
syntax enable
syntax on
set hlsearch
set background=dark
colorscheme vividchalk
hi Search cterm=NONE ctermfg=black ctermbg=yellow
set number
set relativenumber
autocmd FileType ruby compiler ruby
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
nnoremap <leader>src :source %<CR>
nnoremap <leader>sv <c-w>H
nnoremap <leader>sh <c-w>K
nnoremap <leader>on :only<CR>
map Q :qa!<CR>
	" GTD maps
		" gtd mark item complete (single line, then visual)
nnoremap <leader>ic dd<c-w>lggp<c-w>h
vnoremap <leader>ic d<c-w>lggp<c-w>h
		" gtd quit
nnoremap <leader>gq :wa<CR>:qa<CR>


