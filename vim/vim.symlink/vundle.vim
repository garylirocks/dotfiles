" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.


" ====== plugin on GitHub repo ====== 

" fuzzy path finder, use `Ctrl-p` to start searching files
Plugin 'ctrlpvim/ctrlp.vim'


" file system explorer
Plugin 'scrooloose/nerdtree'

" start NERDTree automatically when no file specified or opening a directory
autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


" make nerdtree act like a true panel across all tabs
Plugin 'jistr/vim-nerdtree-tabs'

" use `Ctrl-n` to toggle NERDTree
map <C-n> :NERDTreeTabsToggle<CR>


" powerful status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" let g:airline_theme='simple'


Plugin 'vim-syntastic/syntastic'


" update tag files automatically
Plugin 'xolox/vim-misc'     " required by the easytags plugin
Plugin 'xolox/vim-easytags'


" show tags in a separate window
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>


" surround
Plugin 'tpope/vim-surround'


" vim-repeat
Plugin 'tpope/vim-repeat'


Plugin 'prettier/vim-prettier'
" '@format' or '@prettier' tag is not required for auto formatting
let g:prettier#autoformat_require_pragma = 0
" do auto formatting when there is a prettier config file
let g:prettier#autoformat_config_present = 1

" fzf
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'
" ====== /plugin on GitHub repo ====== 



" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

