# My neovim config files
My configuration for the neovim editor, in *~/.config/nvim* folder.
Steps for replication, and reminder about settings and plugins.

* install neovim for ubuntu, with all dependencies.
* install dein manager in a **dein folder**, which lives in the same directory ($ sh ./installer.sh {specify the installation directory}). => *$ sh ./installer.sh ~/.config/nvim/dein/*
* install deoplete, with dependencies for python and whatever language you're gonna use with it.
  * pip install python-language-server
  * pip install jedi
  * sudo apt-get install clang libclang-dev
* install exuberant-ctags to work with gutentags (sudo apt-get install exuberant-ctags)
* install the repls you want to use with iron-vim. (e.g. ghci for haskell, ipython for python, etc)


## Packages used:
* Dein
* Deoplete (for autocompletions)
  * deoplete-jedi
  * deoplete-clang
* LanguageClient-neovim (language server protocol plugin). Allows you to use language servers that give language smartness, such as autocompletion candidates, renaming, go-to-definition, and other goodies that were only usually available in expensive IDE's. You can find language-servers in http://langserver.org/
* vim-gutentags (generate tags file automatically in a project (git, hg, .. project))
* vimtex (vim continuous compilation, while editin in vim). In ubuntu, required to install aditional libs: *liwsynctex-dev* and *libgtk-3-dev*. Initiate compiling with *\ll* and view the produced pdf with *\lv*, *\lt* to see the table of contents, *\le* to see the compilation errors or warnings. The rest of shorcuts are available in <a>https://github.com/lervag/vimtex/wiki/usage</a>. Install **zathura** as the pdf viewer, which has vim-like navigation.
* ultisnips (snippets for faster coding). Directory with snippets: *snippets_ulti*. Mapped *:UltiSnipsEdit*, to *gs* to create new snippets on the fly. Usage: write the abreviation in insert mode, and hit Tab. Then, you can write in the placeholders, and cycle through them, forwards or backward with <C-j> and <C-k>.
* iron.nvim (send your code to a REPL, according to the language you're editing. Create a new REPL with the command *IronRepl*. And send the code to the REPL with *ctr*. You can also call the previous command with *cp* (remember: call previous))
* tpope/vim-commentary (comment lines with *gc*, and *gcc*)
* tpope/vim-surround (change, create or remove surrounding elements like *{}*)
* nerdtree (show file structures) -> toogle mapped to *C-n*
* jiangmiao/auto-pairs (when open a paraenthesis or brackets , automatically create the other)
* michaeljsmith/vim-indent-object (add idented text object, useful for python-like idented blocks of text. cii (changes inner identation). cai (changes inner identation included the top line)).
* Other plugins related with web syntax and formating: (currently mapped C-f to beautify (indentations))
  * alvan/vim-closetag (like auto-pairs for html tags)
  * hail2u/vim-css3-syntax
  * ap/vim-css-color
  * othree/html5.vim
  * maksimr/vim-jsbeautify
  
# Appearance plugins
* dylanaraps/wal.vim (uses the colorcheme provided by pywal, a i3wm python colorscheme generator from the wallpaper image). To use it, you shouldn't set termiguicolors in the init.vim config file.
* itchyny/lightline.vim (a bottom bar with info, for which you can change its colorscheme independently of the text)
* vim-airline/vim-airline (nice StatusLine which uses the colorscheme color by default)

## Also checkout:
* for a variety of colorschemes: <a>https://github.com/rafi/awesome-vim-colorschemes</a>
