function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
function! BuildTern(info)
  if a:info.status == 'installed' || a:info.force
    !npm install
  endif
endfunction
function! LightLineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction
function! LightLineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? branch : ''
  endif
  return ''
endfunction
function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction
function! LightLineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction
function! LightLineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction
function! LightLineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
command! -bang -nargs=* Rgcode
  \ call fzf#vim#grep(
  \   "rg --column --line-number --no-heading --color=always -g '!node_modules/' -g '!test/' ".shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'Raimondi/delimitMate'
Plug 'honza/vim-snippets'	
Plug 'iandoe/vim-osx-colorpicker'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/denite.nvim'
Plug 'mhinz/vim-signify'
"Plug 'Shougo/echodoc.vim'
"Plug 'chrisbra/NrrwRgn'
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'leafgarland/typescript-vim'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()
let mapleader=" "
set t_Co=256
set background=light
"colorscheme PaperColor
colorscheme tomorrow-night
filetype plugin indent on
syntax enable
syntax on
hi Search cterm=NONE ctermfg=black ctermbg=blue
set hlsearch
set hidden
set incsearch
set ignorecase
set smartcase
set number
set relativenumber
set splitbelow
set splitright
set updatetime=500
set ttimeoutlen=100
set cmdheight=2
set list listchars=tab:\ \ ,trail:·
set expandtab sw=2 softtabstop=2 ai
cnoreabbrev H vert h
nnoremap <SPACE> <Nop>
nnoremap <leader>noh :noh<CR>
nnoremap <leader>y "*y
nnoremap <leader>yy "*Y
nnoremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>
nnoremap <leader>src :source %<CR>
nnoremap <leader>sa :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>sv <c-w>H
nnoremap <leader>sh <c-w>K
nnoremap <leader>on :only<CR>
nnoremap <leader>> <C-w>10>
nnoremap <leader>< <C-w>10<
nnoremap <leader>= <C-w>5+
nnoremap <leader>- <C-w>5-
nnoremap <leader>wh <c-w>h
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l
nnoremap <leader>h :vert help
nnoremap <leader>lf <c-^>
"nnoremap <leader>ic dd<c-w>lggp<c-w>h
"nnoremap <leader>ic ddmmGp:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>yssbkJ'm
nnoremap <leader>ic ddmmGp:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>I(<c-[>A)<c-[>kJ'm
nnoremap <leader>fa :FZF<CR>
nnoremap <leader>fp :GitFiles<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fr :Rg<CR>
nnoremap <leader>fg :Rgcode<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>cpr :ColorHEX<CR>
nnoremap <leader>\ :NERDTreeToggle<CR>
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprevious<CR>
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprevious<CR>
nnoremap 0 ^
nnoremap ^ 0
vnoremap // y/<C-R>"<CR>
"vnoremap <leader>ic d<c-w>lggp<c-w>h
vnoremap <leader>ic dmmGp:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>I(<c-[>A)<c-[>kJ'm
vnoremap <leader>y "*y
map      <Leader>s <Plug>(easymotion-bd-f)
map      Q :qa!<CR>
nmap     s <Plug>(easymotion-overwin-f)
nmap     <leader>jj :JsDoc<cr>
nmap 	 <leader>jp <Plug>(Prettier)
xmap     ga <Plug>(EasyAlign)
nmap     ga <Plug>(EasyAlign)
let g:rustfmt_autosave               = 0
let g:syntastic_rust_checkers	     = []
let g:jsx_ext_required               = 0
let g:jsdoc_allow_input_prompt       = 1
let g:jsdoc_enable_es6               = 1
let g:tern_request_timeout           = 1
let g:tern#command                   = ["tern"]
let g:tern#arguments                 = ["--persistent"]
let g:deoplete#enable_at_startup     = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#enable_ignore_case    = 1
let g:deoplete#enable_smart_case     = 1
let g:deoplete#enable_camel_case     = 1
let g:colorpicker_app                = 'iTerm.app'
let g:UltiSnipsExpandTrigger         = "<leader>]"
let g:UltiSnipsJumpForwardTrigger    = "<leader>]"
let g:UltiSnipsJumpBackwardTrigger   = "<leader>["
let g:UltiSnipsEditSplit             = "vertical"
let g:UltiSnipsSnippetsDir           = "~/.config/nvim/snips"
let g:UltiSnipsSnippetDirectories    = ["UltiSnips", "snips"]
let g:EasyMotion_smartcase           = 1
let g:coc_node_path = '/Users/jon/.asdf/installs/nodejs/12.4.0/bin/node'
let g:lightline = {
    \ 'mode_map': { 'c': 'NORMAL' },
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
    \ },
    \ 'component_function': {
    \   'modified': 'LightLineModified',
    \   'fugitive': 'LightLineFugitive',
    \   'fileformat': 'LightLineFileformat',
    \   'filetype': 'LightLineFiletype',
    \   'fileencoding': 'LightLineFileencoding',
    \   'mode': 'LightLineMode',
    \ }
    \ }
let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }
let g:LanguageClient_serverCommands = {
    \ 'fsharp': ['dotnet', '/Users/jon/code/fsharp-language-server/src/FSharpLanguageServer/bin/Release/netcoreapp2.0/FSharpLanguageServer.dll'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'ruby': ['/Users/jon/.rvm/gems/ruby-2.6.0/gems/solargraph-0.32.1/bin/solargraph', 'stdio'],
    \ }
autocmd FileType typescript setlocal expandtab sw=2 softtabstop=2 ai
autocmd FileType javascript setlocal expandtab sw=2 softtabstop=2 ai
au BufRead,BufNewFile *.fs,*.fsi,*.fsx set filetype=fsharp
autocmd FileType fsharp setlocal expandtab sw=2 softtabstop=2 ai
autocmd FileType javascript.jsx setlocal expandtab sw=2 softtabstop=2 ai
autocmd FileType javascript.jsx nnoremap <leader>r :!node %<CR>
autocmd FileType javascript set formatprg=prettier\ --stdin
autocmd BufWritePre *.js :normal gggqG
" Slack papercolor theme #E9E9E9,#E9E9E9,#0E739E,#FFFFFF,#FFFFFF,#3C3C3C,#4E7702,#CA0875
