"设置插件管理
"需要先安装插件vim-plug
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'dyng/ctrlsf.vim' " ------------------------------------------------
"Plug 'SirVer/ultisnips' " ----------------------------------------------- code template
Plug 'vim-airline/vim-airline' " ----------------------------------------
Plug 'vim-airline/vim-airline-themes' " ---------------------------------
"Plug 'Valloric/YouCompleteMe'
Plug 'mhinz/vim-signify' " ----------------------------------------------
Plug 'rdnetto/YCM-Generator' " ------------------------------------------
Plug 'derekwyatt/vim-fswitch' " -----------------------------------------
Plug 'aceofall/gtags.vim' " ---------------------------------------------
Plug 'Chiel92/vim-autoformat' " -----------------------------------------
Plug 'junegunn/vim-easy-align' " ---------------------------------------- fast align multiple line 
Plug 'honza/vim-snippets' " --------------------------------------------- code template
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " ---------------
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' } " ------------------
Plug 'scrooloose/nerdcommenter' " ---------------------------------------
"Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " -----
Plug 'majutsushi/tagbar' " ----------------------------------------------
Plug 'justinmk/vim-sneak' " ---------------------------------------------
Plug 'rking/ag.vim' " ---------------------------------------------------
Plug 'terryma/vim-multiple-cursors' " -----------------------------------
Plug 'ctrlpvim/ctrlp.vim' " ---------------------------------------------
Plug 'derekwyatt/vim-fswitch' " -----------------------------------------
Plug 'godlygeek/tabular' " ----------------------------------------------
Plug 'dracula/vim' " ----------------------------------------------------
Plug 'tomasr/molokai' " -------------------------------------------------
Plug 'jiangmiao/auto-pairs' " -------------------------------------------
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'easymotion/vim-easymotion' " --------------------------------------
Plug 'honza/vim-snippets' " ---------------------------------------------
Plug 'lervag/vimtex'  " ------------------------------------------------- tex environment for vim
Plug 'psliwka/vim-smoothie' " ------------------------------------------- smooth page up and page down
call plug#end()

xmap ga <Plug>(EasyAlign)

" high light current line
set cursorline

"设置编码
set encoding=utf-8
"设置行号
"set relativenumber
"set nonumber
"设置换行和缩进
set smartindent
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让vim 把连续数量的空格视为一个制表符
set softtabstop=4
set backspace=2
set nocompatible
" 关闭多行显示
" 当一行太长超过窗口的显示范围是，不换行
set nowrap

"设置鼠标开启
set mouse=a
" 设主题颜色为 lucius
if !empty(glob("/usr/share/vim/vim74/colors/lucius.vim"))
    set background=dark
    colorscheme lucius
    "colorscheme zellner 
    "colorscheme blue
    "colorscheme darkblue
    "colorscheme default
    "colorscheme desert
    "colorscheme elflord
    "colorscheme morning
    "colorscheme koehler 
    "colorscheme murphy
    "colorscheme pablo
    "colorscheme peachpuff
    "colorscheme ron
    "colorscheme shine
    "colorscheme slate
    "colorscheme torte
    "LuciusDark
endif

" 设置leader键
let mapleader=","

" 设置背景在黑色和透明间切换
nnoremap <leader>bn :hi Normal ctermfg=white ctermbg=none<CR>
nnoremap <leader>nb :hi Normal ctermfg=white ctermbg=black<CR>
hi Normal ctermfg=white ctermbg=black




" inseresting mapping ----------------------------------

" open new window to edit ~/.vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" let vimrc become effect now!
nnoremap <leader>sv :source $MYVIMRC<cr>

" surrand a word with "
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

map c <nop>
" full page up
"nnoremap cb <C-b>
" full page down
"nnoremap cf <C-f>
" half page up
nmap ck <C-u>
" half page down
nmap cj <C-d>

" move cursor to the end of current line
nnoremap cl $
" move cursor to the begining of current line
nnoremap ch 0

nnoremap vs :vsplit<cr>
nnoremap ss :split<cr>
nnoremap <leader>v1 :vertical resize 10<cr>
nnoremap <leader>v2 :vertical resize 20<cr>
nnoremap <leader>v3 :vertical resize 30<cr>
nnoremap <leader>v4 :vertical resize 40<cr>
nnoremap <leader>v5 :vertical resize 50<cr>
nnoremap <leader>v6 :vertical resize 60<cr>
nnoremap <leader>v7 :vertical resize 70<cr>
nnoremap <leader>v8 :vertical resize 80<cr>
nnoremap <leader>s1 :resize 10<cr>
nnoremap <leader>s2 :resize 20<cr>
nnoremap <leader>s3 :resize 30<cr>
nnoremap <leader>s4 :resize 40<cr>
nnoremap <leader>s5 :resize 50<cr>
nnoremap <leader>s6 :resize 60<cr>
nnoremap <leader>s7 :resize 70<cr>
nnoremap <leader>s8 :resize 80<cr>

map <left> <nop>
map <up> <nop>
map <down> <nop>
map <right> <nop>

nnoremap <leader>hex :%!xxd

nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>wq :wq<cr>

nnoremap <leader>t :term<cr>


" interesting mapping ----------------------------------





" my information short cut ----------------------------

iabbrev ng_email 602131568@qq.com
iabbrev ng_name1 NiuGenen
iabbrev ng_name2 木艮氵
iabbrev ng_address https://blog.csdn.net/stringNewName

" my information short cut ----------------------------





" operator pending ------------------------

" onoremap b /return<cr>
onoremap sp i(

" operator pending ------------------------






"让配置立即生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 设置代码大括号间联系插件indent_guides
" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_guides_guide_size=1
" 快捷键i开/关缩进可视化
"nmap <silent> <leader>i <Plug>IndentGuidesToggle

"设置模板补全插件UltiSnips
"tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
let g:UltiSnipsSnippetDirectories=["~/.vim/mysnippets"]

"设置YouCompleteMe代码补全和跳转插件
"if !empty(glob("~/.vim/plugged/YouCompleteMe/third_party/ycmd/ycm_core.so"))
    " YCM 补全菜单配色
    "选中项
    "nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
    "highlight Pmenu ctermfg=3 ctermbg=0  guifg=#005f87 guibg=#EEE8D5
    "let g:ycm_server_python_interpreter='/usr/bin/python3'
    "let g:ycm_global_ycm_extra_conf = '/home/ng/.ycm_extra_conf.py'
    "回车即选中当前项"
    "inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<CR>"
    "nnoremap <C-b> :YcmCompleter GoToDefinitionElseDeclaration <CR>
    " 补全功能在注释中同样有效
    "let g:ycm_complete_in_comments=1
    " 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
    "let g:ycm_confirm_extra_conf=0
    "" 开启 YCM 标签补全引擎
    "let g:ycm_collect_identifiers_from_tags_files=1
    "" 引入 C++ 标准库tags
    "set tags+=/home/raohui/.vim/tags/stdcpp.tags
    "" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
    "inoremap <leader>; <C-x><C-o>
    "" 补全内容不以分割子窗口形式出现，只显示补全列表
    "set completeopt-=preview
    "" 禁止缓存匹配项，每次都重新生成匹配项
    "let g:ycm_cache_omnifunc=0
    "" 语法关键字补全
    "let g:ycm_seed_identifiers_with_syntax=1
    "let g:ycm_key_invoke_completion = '<C-a>'
"endif

" 设置文件中光标快速移动插件EasyMotion
let g:EasyMotion_do_mapping = 0
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map m <Plug>(easymotion-prev)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" 设置文件视图插件NERDTReeToggle
" 快捷键
map <leader>l :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=20
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
"let g:ctrlsf_ackprg = 'ag'
"nnoremap <C-f> :CtrlSF

"设置标签生成插件gtags.vim 设置项
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
set cscopetag " 使用 cscope 作为 tags 命令
set cscopeprg='gtags-cscope' " 使用 gtags-cscope 代替 cscope

"设置格式化插件autofarmat
noremap <F4> :Autoformat<CR>
let g:autoformat_verbosemode=1

"设置vim_airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
nnoremap ,[ :bp<CR>
nnoremap ,] :bn<CR>

" 设置搜索文件插件CtrlP快捷键
map <C-p> :CtrlP<CR>
" CtrlP和ag搭配
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

" 设置相同单词一起改名插件multi_cursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-j>'
let g:multi_cursor_skip_key='<C-k>'
let g:multi_cursor_quit_key='<Esc>'

" 设置代码检查ale
" set nocompatible
" filetype off
"let &runtimepath.=',~/.vim/plugged/ale/'
"filetype plugin on
"let g:ale_sign_column_always = 1
"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'

" 设置保存快捷键
map <C-s> :w<CR>
imap <C-s> <C-o>:w<CR>

" 设置保存退出快捷键
nnoremap zz :wq<CR>
" 设置function视图插件tagbar的信息
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_right=1
" 设置显示／隐藏标签列表子窗口的快捷键。
nnoremap <F5> :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
            \ 'kinds' : [
            \ 'c:classes:0:1',
            \ 'd:macros:0:1',
            \ 'e:enumerators:0:0',
            \ 'f:functions:0:1',
            \ 'g:enumeration:0:1',
            \ 'l:local:0:1',
            \ 'm:members:0:1',
            \ 'n:namespaces:0:1',
            \ 'p:functions_prototypes:0:1',
            \ 's:structs:0:1',
            \ 't:typedefs:0:1',
            \ 'u:unions:0:1',
            \ 'v:global:0:1',
            \ 'x:external:0:1'
            \ ],
            \ 'sro'        : '::',
            \ 'kind2scope' : {
            \ 'g' : 'enum',
            \ 'n' : 'namespace',
            \ 'c' : 'class',
            \ 's' : 'struct',
            \ 'u' : 'union'
            \ },
            \ 'scope2kind' : {
            \ 'enum'      : 'g',
            \ 'namespace' : 'n',
            \ 'class'     : 'c',
            \ 'struct'    : 's',
            \ 'union'     : 'u'
            \ }
            \ }

":function Asd(...)
":   echom a:0
":   echom a:1
":   echom a:2
":   let alist = a:4
":   echo alist
":   call add(alist,"uio")
":   echo alist
":endfunction

"let aaa = ['qwe','zxc','asd']
"call Asd("qwe","zxc","asd", aaa )
"echo aaa



































