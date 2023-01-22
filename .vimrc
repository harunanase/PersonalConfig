set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'ycm-core/YouCompleteMe'
Plugin 'hashivim/vim-terraform'
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-fugitive'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

" git repos on your local machine (i.e. when working on your own plugin)

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

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

" Nerdtree settings
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" <shift>+i to Toogle this
" let NERDTreeShowHidden=1

" Nerdtree key mapping
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>w <C-w><C-w>

" Tempory solve the bug of Nerdtree menu doesnot desappear problem
" Check https://github.com/preservim/nerdtree/issues/1321
let g:NERDTreeMinimalMenu=1

" FZF plugin settings
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>

" This is the default extra key bindings of FZF
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let $FZF_DEFAULT_OPTS="--bind \"ctrl-n:preview-down,ctrl-p:preview-up\""


" General settings
set nu
syntax on
set cursorline
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set encoding=UTF-8
set bg=dark
