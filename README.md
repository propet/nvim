# My neovim config files
My configuration for the neovim editor, in *~/.config/nvim* folder.
Steps for replication, and reminder about settings and plugins.

* Install neovim.
* Install dein manager in a **dein folder**, which lives in the same directory ($ sh ./installer.sh {specify the installation directory}). => *$ sh ./installer.sh ~/.config/nvim/dein/*
* Install LanguageClient-neovim. Install language servers, and configure LanguageClient-neovim so it targets the language server paths.

## Packages used:
* [Dein](https://github.com/Shougo/dein.vim). Package manager. Alternatives would be: [vim-plug](junegunn/vim-plug), or [minpac](https://github.com/k-takata/minpac).
* [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim). Allows you to use language servers that give language smartness, such as autocompletion candidates, renaming, go-to-definition, and other goodies that were only usually available in expensive IDE's. You can find language-servers in http://langserver.org/
* [Deoplete](https://github.com/Shougo/deoplete.nvim)(for autocompletions)
* [neoterm](https://github.com/kassio/neoterm). Wrapper on neo(vim) terminal. Send commands to the terminals. Allows for a better REPL experience, and automate the running of commands from your text buffer (like `nnoremap <F5> :T make`, which will run make in the terminal). From a plain buffer, open a terminal with `:bot Tnew`, and then run some command to it like `:T echo "Hola mundo"`. To interact with a REPL, you can press `<leader>2`, and that will paste your current line, or selection to the REPL.
* [vimtex](https://github.com/lervag/vimtex)(vim continuous compilation, while editin in vim). In ubuntu, required to install aditional libs: *liwsynctex-dev* and *libgtk-3-dev*. Initiate compiling with *\ll* and view the produced pdf with *\lv*, *\lt* to see the table of contents, *\le* to see the compilation errors or warnings. The rest of shorcuts are available in <a>https://github.com/lervag/vimtex/wiki/usage</a>. Install **zathura** as the pdf viewer, which has vim-like navigation.
* [ultisnips](https://github.com/sirver/UltiSnips)(snippets for faster coding). Directory with snippets: *snippets_ulti*. Mapped *:UltiSnipsEdit*, to *gs* to create new snippets on the fly. Usage: write the abbreviation in insert mode, and hit Tab. Then, you can write in the placeholders, and cycle through them, forwards or backward with <C-j> and <C-k>.
* [fzf](https://github.com/junegunn/fzf.vim) Fuzzy finder. Find files, lines in files, openned bufers and much more.  
  Install Ag to search lines across the whole project (`sudo apt-get install silversearcher-ag`). Install [cat](https://github.com/sharkdp/bat) (cat clone with wings) to view the preview windows with syntax coloring.  
  My mappings: `<leader>f` to search recursively like grep. Ctrl-P to search for files recursively like find. `<leader>b` to search for openned buffers.
* [vim-commentary](https://github.com/tpope/vim-commentary)(comment lines with *gc*, and *gcc*)
* [vim-surround](https://github.com/tpope/vim-surround)(change, create or remove surrounding elements like *{}*)
* [nerdtree](https://github.com/scrooloose/nerdtree)(show file structures) -> toogle mapped to *C-n*
* [auto-pairs](https://github.com/jiangmiao/auto-pairs)(when open a paraenthesis or brackets , automatically create the other)
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object)(add idented text object, useful for python-like idented blocks of text. cii (changes inner identation). cai (changes inner identation included the top line)).
* Markdown related plugins
  * [md-img-paste.vim](https://github.com/ferrine/md-img-paste.vim)(leader-p shorcut to paste an image from clipboard. It saves the images in ./img/<img_name> and it loads it in the markdown file like ![](img/<img_name>))
  * [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)(:MarkdownPreview to see the live preview, and :MarkdownPreviewStop to stop the preview).

> * [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)(Full path fuzzy file, buffer, mru, tag, ... finder for Vim.) Written in pure vimscript. Start typing initial letters and final letters (you could skip in between characters), and press `<CR>` to open it in the current buffer, or `<C-S>` or `<C-V>` to open it in a horizontal or vertical split. `<c-p>` looks for files from the current directory (use F5 to refresh the files while ctrlp is open). `\b` is mapped to ctrlP, but it will only look for open buffers.
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


# Tips
* [Change vim identation behaviour by file type](https://stackoverflow.com/questions/158968/changing-vim-indentation-behavior-by-file-type)
