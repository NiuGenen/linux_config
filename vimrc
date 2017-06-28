call plug#begin('~/.vim/plugged')
Plug 'dyng/ctrlsf.vim'              "search

Plug 'SirVer/ultisnips'             "code block
Plug 'honza/vim-snippets'

Plug 'scrooloose/nerdtree'          "file system

Plug 'vim-airline/vim-airline'      "air bar - like status
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let mapleader=","

let g:UltiSnipsExpandTrigger="<tab>"      "quick insert code block
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"设置文件视图插件NERDTReeToggle
"" 快捷键
map <leader>l :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=35
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" 使用 ctrlsf.vim
" 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in
" project
let g:ctrlsf_ackprg = 'ag'
nnoremap <C-f> :CtrlSF

"设置vim_airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
""设置切换Buffer快捷键"
nnoremap <F2> :bn<CR>
nnoremap <F3> :bp<CR>

set nu                              "show line number
syntax on                           "grammer high light
autocmd InsertEnter * se cul        "current line
set scrolloff=3                     "3 line from top/bottom
set foldenable                      "allow fold
set foldmethod=marker               "fold by hand

colorscheme lucius
LuciusDark
if exists('$TMUX')
  set term=screen-256color
endif

set expandtab                       "expand tab to space
set tabstop=4                       "1 tab == 4 space
set shiftwidth=4
set softtabstop=4
set backspace=2
set nocompatible


