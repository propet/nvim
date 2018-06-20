if &compatible
  set nocompatible
endif
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim') " Add or remove you plugins here: " call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-clang')
  call dein#add('ludovicchabant/vim-gutentags')
  call dein#add('lervag/vimtex')
  call dein#add('SirVer/ultisnips')
  call dein#add('scrooloose/syntastic')
  call dein#add('tpope/vim-surround')
  call dein#add('scrooloose/nerdtree')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('itchyny/lightline.vim')
  call dein#add('tpope/vim-commentary')
  call dein#add('BurningEther/iron.nvim')
  call dein#add('michaeljsmith/vim-indent-object')
  call dein#add('autozimu/LanguageClient-neovim')
  call dein#add('autozimu/LanguageClient-neovim', {
      \ 'rev': 'next',
      \ 'build': 'bash install.sh',
      \ })
  " web related plugins
	  " call dein#add('alvan/vim-closetag')
	  " call dein#add('hail2u/vim-css3-syntax')
	  " call dein#add('ap/vim-css-color')
	  " call dein#add('othree/html5.vim')
	  " call dein#add('maksimr/vim-jsbeautify')
  " Colorscheme
  call dein#add('mhartington/oceanic-next')

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
" set number relativenumber "hybrid line numbering
set ruler
set incsearch
set nohlsearch
set termguicolors
set clipboard+=unnamedplus
set mouse=a " allows to use the mouse. Useful to resize window splits.

" mappings
map <C-n> :NERDTreeToggle<CR>


" Completions
let g:deoplete#enable_at_startup = 1
" deoplete-clang requirements
let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-4.0/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"


" Syntastic
let g:syntastic_python_checkers = ['python', 'flake8']

" terminal
set shell=bash
tnoremap <C-[> <C-\><C-n>

" iron.nvim
" deactivate default mappings
let g:iron_map_defaults=0
" define custom mappings for the python filetype
augroup ironmapping
  autocmd!
  autocmd Filetype python nmap <buffer> <C-c><C-c> <Plug>(iron-send-motion)
  autocmd Filetype python nmap <buffer> <localleader>p <Plug>(iron-repeat-cmd)
augroup END

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

" Visuals
colorscheme OceanicNext
let g:lightline = {'colorscheme': 'one'}
"set background=dark

" vimtext
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk = {
        \ 'backend' : 'nvim',
        \ 'background' : 1,
        \ 'build_dir' : '',
        \ 'callback' : 1,
        \ 'continuous' : 1,
        \ 'executable' : 'latexmk',
        \ 'options' : [
        \   '-pdf',
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \   '--shell-escape',
        \ ],
        \}

" ULtiSnips
let g:UltiSnipsSnippetsDir = "~/.config/nvim/snippets_ulti"
let g:UltiSnipsSnippetDirectories=["snippets_ulti"]
let g:UltiSnipsEditSplit = "vertical"
map <C-3> :UltiSnipsEdit <CR>



" Language Server Protocol (LSP) with LanguageClient-neovim plugin
"
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
      \ 'python': ['pyls'],
      \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
