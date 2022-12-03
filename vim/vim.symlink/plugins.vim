call plug#begin('~/.vim/plugged')

" ====== plugin on GitHub repo ======

" fuzzy path finder, use `Ctrl-p` to start searching files
" Plug 'ctrlpvim/ctrlp.vim'


" file system explorer
Plug 'scrooloose/nerdtree'
" start NERDTree automatically when no file specified or opening a directory
" autocmd StdinReadPre * let s:std_in=1

" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


" make nerdtree act like a true panel across all tabs
Plug 'jistr/vim-nerdtree-tabs'
" use `Ctrl-n` to toggle NERDTree
map <C-n> :NERDTreeTabsToggle<CR>


" powerful status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" let g:airline_theme='simple'

" theme
Plug 'morhetz/gruvbox'
set bg=dark
autocmd VimEnter * colorscheme gruvbox

" syntax checking
Plug 'vim-syntastic/syntastic'


" update tag files automatically
Plug 'xolox/vim-misc'     " required by the easytags plugin
Plug 'xolox/vim-easytags'


" show tags in a separate window
Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>


" surround
Plug 'tpope/vim-surround'


" vim-repeat
Plug 'tpope/vim-repeat'


Plug 'prettier/vim-prettier'
" '@format' or '@prettier' tag is not required for auto formatting
let g:prettier#autoformat_require_pragma = 0
" do auto formatting when there is a prettier config file
let g:prettier#autoformat_config_present = 1


" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
nnoremap <C-p> :FZF<CR>
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
" search current word under cursor
nnoremap <silent> <Leader>gg :Rg <C-R><C-W><CR>
" buffers
nnoremap <leader>b :Buffers<CR>
" search anything
nnoremap <leader>g :Rg<CR>


" YouCompleteMe
" Plug 'ycm-core/YouCompleteMe'


" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_disable_startup_warning = 1
source ~/.vim/coc.vim


" Markdown Preview
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
let g:mkdp_browser = 'firefox'


" Git
Plug 'tpope/vim-fugitive'
nnoremap <leader>gs :tab G<CR>

" start screen
Plug 'mhinz/vim-startify'

" change to project root
" Plug 'airblade/vim-rooter'
" ====== /plugin on GitHub repo ======

call plug#end()            " required

