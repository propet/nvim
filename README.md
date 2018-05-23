# My neovim config files
My configuration for the neovim editor, in *~/.config/nvim* folder.
Steps for replication, and reminder about settings and plugins.

* install neovim for ubuntu, with all dependencies.
* install dein manager in a **dein folder**, which lives in the same directory ($ sh ./installer.sh {specify the installation directory}). => *$ sh ./installer.sh ~/.config/nvim/dein/*
* install deoplete, with dependencies for python and whatever language you're gonna use with it.
  * pip install jedi
  * sudo apt-get install clang libclang-dev
* install exuberant-ctags to work with gutentags (sudo apt-get install exuberant-ctags)


## Packages used:
* Dein
* Deoplete (for autocompletions)
  * deoplete-jedi
  * deoplete-clang
* vim-gutentags (generate tags file automatically in a project (git, hg, .. project))
* vimtex (vim continuous compilation, while editin in vim). In ubuntu, required to install aditional libs: *liwsynctex-dev* and *libgtk-3-dev*. Initiate compiling with *\ll* and view the produced pdf with *\lv*, *\lt* to see the table of contents, *\le* to see the compilation errors or warnings. The rest of shorcuts are available in <a>https://github.com/lervag/vimtex/wiki/usage</a>. Install **zathura** as the pdf viewer, which has vim-like navigation.
* ultisnips (snippets for faster coding). Directory with snippets: *snippets_ulti*. Mapped *:UltiSnipsEdit*, to *<C-^>*
* slime (run python code from editor to ipython terminal using screen)
* tpope/vim-commentary (comment lines with *gc*, and *gcc*)
* tpope/vim-surround (change, create or remove surrounding elements like *{}*)
* itchyny/lightline.vim (a bottom bar with info, for which you can change its colorscheme independently of the text)
* nerdtree (show file structures) -> toogle mapped to *C-n*
* jiangmiao/auto-pairs (when open a paraenthesis or brackets , automatically create the other)
* Other plugins related with web syntax and formating: (currently mapped C-f to beautify (indentations))
  * alvan/vim-closetag (like auto-pairs for html tags)
  * hail2u/vim-css3-syntax
  * ap/vim-css-color
  * othree/html5.vim
  * maksimr/vim-jsbeautify
  


## Also checkout:
* for a variety of colorschemes: <a>https://github.com/rafi/awesome-vim-colorschemes</a>
