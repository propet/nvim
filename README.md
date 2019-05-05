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
* [Dein](https://github.com/Shougo/dein.vim). Package manager. Alternatives would be: [vim-plug](junegunn/vim-plug).
* [Deoplete](https://github.com/Shougo/deoplete.nvim)(for autocompletions)
* [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim). Allows you to use language servers that give language smartness, such as autocompletion candidates, renaming, go-to-definition, and other goodies that were only usually available in expensive IDE's. You can find language-servers in http://langserver.org/
* [neoterm](https://github.com/kassio/neoterm). Wrapper on neo(vim) terminal. Send commands to the terminals. Allows for a better REPL experience, and automate the running of commands from your text buffer (like `nnoremap <F5> :T make`, which will run make in the terminal). From a plain buffer, open a terminal with `:bot Tnew`, and then run some command to it like `:T echo "Hola mundo"`. Interacting with a REPL is as easy as copying from for buffer and pasting with `<C-0>` after `:T `.
* [vimtex](https://github.com/lervag/vimtex)(vim continuous compilation, while editin in vim). In ubuntu, required to install aditional libs: *liwsynctex-dev* and *libgtk-3-dev*. Initiate compiling with *\ll* and view the produced pdf with *\lv*, *\lt* to see the table of contents, *\le* to see the compilation errors or warnings. The rest of shorcuts are available in <a>https://github.com/lervag/vimtex/wiki/usage</a>. Install **zathura** as the pdf viewer, which has vim-like navigation.
* [ultisnips](https://github.com/sirver/UltiSnips)(snippets for faster coding). Directory with snippets: *snippets_ulti*. Mapped *:UltiSnipsEdit*, to *gs* to create new snippets on the fly. Usage: write the abreviation in insert mode, and hit Tab. Then, you can write in the placeholders, and cycle through them, forwards or backward with <C-j> and <C-k>.
* [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)(Full path fuzzy file, buffer, mru, tag, ... finder for Vim.) Written in pure vimscript
* [vim-commentary](https://github.com/tpope/vim-commentary)(comment lines with *gc*, and *gcc*)
* [vim-surround](https://github.com/tpope/vim-surround)(change, create or remove surrounding elements like *{}*)
* [nerdtree](https://github.com/scrooloose/nerdtree)(show file structures) -> toogle mapped to *C-n*
* [auto-pairs](https://github.com/jiangmiao/auto-pairs)(when open a paraenthesis or brackets , automatically create the other)
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object)(add idented text object, useful for python-like idented blocks of text. cii (changes inner identation). cai (changes inner identation included the top line)).
* Markdown related plugins
  * [md-img-paste.vim](https://github.com/ferrine/md-img-paste.vim)(leader-p shorcut to paste an image from clipboard. It saves the images in ./img/<img_name> and it loads it in the markdown file like ![](img/<img_name>))
  * [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)(:MarkdownPreview to see the live preview, and :MarkdownPreviewStop to stop the preview).
* Other plugins related with web syntax and formating: (currently mapped C-f to beautify (indentations))
  * alvan/vim-closetag (like auto-pairs for html tags)
  * hail2u/vim-css3-syntax
  * ap/vim-css-color
  * othree/html5.vim
  * maksimr/vim-jsbeautify

> * [vim-dispatch](https://github.com/tpope/vim-dispatch). Allows you to compile asyncronously with :Make! <target> (you'd need to then open the quickfix window :copen). *don't really need it now with neoterm*
> * [iron.vim](https://github.com/Vigemus/iron.nvim)(send your code to a REPL, according to the language you're editing. Create a new REPL with the command *IronRepl*. And send the code to the REPL with *ctr*. You can also call the previous command with *cp* (remember: call previous)) *don't really need it now with neoterm*
> * vim-gutentags (generate tags file automatically in a project (git, hg, .. project)). *don't really need it now with LanguageClient*
  
# Appearance plugins
* [wal.vim](https://github.com/dylanaraps/wal.vim)(uses the colorcheme provided by pywal, a i3wm python colorscheme generator from the wallpaper image). To use it, you shouldn't set termiguicolors in the init.vim config file.
* [lightline.vim](https://github.com/itchyny/lightline.vim)(a bottom bar with info, for which you can change its colorscheme independently of the text)
* [vim-airline](https://github.com/vim-airline/vim-airline)(nice StatusLine which uses the colorscheme color by default)
* [goyo.vim](https://github.com/junegunn/goyo.vim)(removes distraction elements. get a minimalist view of your code. ricing-related). Usage: *:Goyo* toogles the mode on and off.

## Also checkout:
* for a variety of colorschemes: <a>https://github.com/rafi/awesome-vim-colorschemes</a>
