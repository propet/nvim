if &compatible
  set nocompatible
endif 

set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')
  " Add or remove you plugins here: " 
  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim') 
  call dein#add('autozimu/LanguageClient-neovim', {
      \ 'rev': 'next',
      \ 'build': 'bash install.sh',
      \ })
  call dein#add('Shougo/deoplete.nvim')
  " call dein#add('zchee/deoplete-clang')
  " call dein#add('ludovicchabant/vim-gutentags')
  call dein#add('lervag/vimtex')
  call dein#add('SirVer/ultisnips')
  " call dein#add('scrooloose/syntastic')
  call dein#add('tpope/vim-surround')
  call dein#add('scrooloose/nerdtree')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('tpope/vim-commentary')
  " call dein#add('BurningEther/iron.nvim')  "REPL
  call dein#add('michaeljsmith/vim-indent-object')
  " web related plugins
	  " call dein#add('alvan/vim-closetag')
	  " call dein#add('hail2u/vim-css3-syntax')
	  " call dein#add('ap/vim-css-color')
	  " call dein#add('othree/html5.vim')
	  " call dein#add('maksimr/vim-jsbeautify')
  " Appearance plugins
  call dein#add('dylanaraps/wal.vim')
  call dein#add('junegunn/goyo.vim')
  " call dein#add('itchyny/lightline.vim')
  call dein#add('vim-airline/vim-airline')
  " call dein#add('mhartington/oceanic-next')

  call dein#end()
  call dein#save_state()
endif

" basics
filetype plugin indent on
set shiftwidth=2
set expandtab
set smartindent
syntax enable
syntax on
set number "absolute line numbers
" set scrollbind "scroll splits at the same time. For file comparing
" set scb & set noscb  "this are the commands to turn on and off the scrollbinding
set ruler
set incsearch
set nohlsearch
set mouse=a " allows to use the mouse. Useful to resize window splits.
" fast buffer switching listing all possibilities beforehand
nnoremap <Leader>b :ls<Cr>:b<Space>  
" terminal
set shell=bash
tnoremap <C-[> <C-\><C-n>

" Colorscheme / colors
colorscheme wal
" hi StatusLine ctermbg=NONE cterm=NONE  "transparent status line
" let g:lightline = {'colorscheme': 'one'}
" Strange bug with status line color. Need to set it up for pywal override
" it. The next command doesn't apply a red statline, but allows the
" colorscheme to do the right thing..
" hi StatusLine ctermbg=red ctermfg=red
" set background=dark
" termiguicolors doesn't work with pywal theme wal
" set termguicolors

" fold settings
set foldmethod=indent  "fold automatically generated by identation rules
set foldnestmax=10
set nofoldenable "makes sure that when opening, files are "normal", i.e. not folded
set foldlevel=2

" mappings
map <C-n> :NERDTreeToggle<CR>


" Syntastic
" let g:syntastic_python_checkers = ['python', 'flake8']


" Beautify html/css/js
map <C-S-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <C-S-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <C-S-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <C-S-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <C-S-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <C-S-f> :call CSSBeautify()<cr>


" vimtext
" let g:vimtex_view_method = 'zathura'
" let g:vimtex_quickfix_mode=0
" let g:vimtex_compiler_latexmk = {
"         \ 'backend' : 'nvim',
"         \ 'background' : 1,
"         \ 'build_dir' : '',
"         \ 'callback' : 1,
"         \ 'continuous' : 1,
"         \ 'executable' : 'latexmk',
"         \ 'options' : [
"         \   '-pdf',
"         \   '-verbose',
"         \   '-file-line-error',
"         \   '-synctex=1',
"         \   '-interaction=nonstopmode',
"         \   '--shell-escape',
"         \ ],
"         \}

" ULtiSnips
let g:UltiSnipsSnippetsDir = "~/.config/nvim/snippets_ulti"
let g:UltiSnipsSnippetDirectories=["snippets_ulti"]
let g:UltiSnipsEditSplit = "vertical"
map gs :UltiSnipsEdit <CR>


" Completions
let g:deoplete#enable_at_startup = 1
" deoplete-clang requirements
" let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-4.0/lib/libclang.so"
" let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"


" Language Server Protocol (LSP) with LanguageClient-neovim plugin
"
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
      \ 'python': ['/home/luis/anaconda3/bin/pyls'],
      \ 'cpp': ['/usr/bin/clangd-7'],
      \ 'c': ['/usr/bin/clangd-7'],
      \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" Autocompletion Configurations
let g:deoplete#enable_at_startup = 1


nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
