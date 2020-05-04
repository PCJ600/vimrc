set nocompatible					" 去掉有关vi的一致性模式	
syntax on							" 语法高亮

" 实用设置
set mouse=a							" 启用鼠标
set wildmenu						" 普通模式输入指令,按tab自动补全
set backspace=indent,eol,start		" 使能退格键
set scrolloff=5						" 看到上下光标5行
filetype on							" 侦测文件类型
filetype plugin on					" 载入文件类型插件
filetype indent on					" 为特定文件类型载入相关缩进文件
filetype plugin indent on

" 改键
let mapleader=" "					" 更改leader键为空格
map s <nop>
map S :w<CR>						
map Q :q<CR>						
map R :source ~/.vimrc<CR>			

" 加快翻阅文本速度
noremap H 7h
noremap J 5j
noremap K 5k
noremap L 7l

" 显示设置
set number							" 显示行号
"set norelativenumber				" 显示相对行号
set cursorline						" 设置标尺
set showcmd							" 显示输入的命令

" C语言选项
set expandtab						" 将tab转成空格
set shiftwidth=4					" 设定tab宽
set tabstop=4						" 设置tab为4个空格 
set autoindent                      " 设置智能缩进


" 搜索设置
set hlsearch						        " 设置搜索高亮
exec "nohlsearch"
set incsearch						        " 设置逐字符高亮
set ignorecase						        " 忽略大小写
set smartcase						        " 智能大小写
noremap <LEADER><CR> :nohlsearch<CR>        " 取消所有高亮显示

" 分屏
map sl :set splitright<CR>:vsplit<CR>		" 向右分屏
map sh :set nosplitright<CR>:vsplit<CR>		" 向左分屏
map sk :set nosplitbelow<CR>:split<CR>		" 向上分屏
map sj :set splitbelow<CR>:split<CR>		" 向下分屏
map sv <C-w>t<C-w>H							" 改为水平分屏
map sh <C-w>t<C-w>K							" 改为竖直分屏

map <LEADER>l <C-w>l						" 向右移动
map <LEADER>j <C-w>j						" 向下移动
map <LEADER>h <C-w>h						" 向左移动
map <LEADER>k <C-w>k						" 向上移动

" 改变分屏大小
map <up> :resize+5<CR>
map <down> :resize-5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" 标签页
map tb :tabe<CR>					        " 创建新标签页
map tp :-tabnext<CR>				        " 切换上一个标签页
map tn :+tabnext<CR>				        " 切换下一个标签页
map ts :tab split<CR>				        " 用标签页打开当期编辑文件
map tf :tabfirst<CR>				        " 切换到第一个标签页
map tl :tablast<CR>					        " 切换到最后一个

set tabpagemax=15					        " VIM默认只能打开10个标签页，这里设置成15

" 配色
color default						        " 选择配色方案


" 文件编码
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

" 其他配置

" 插件管理
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
call plug#end()


" nerdtree配置
map tt :NERDTreeToggle<CR>			" 设置tt为开关nerdtree的快捷键
let NERDTreeWinSize=30				" 窗口尺寸
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"

" YouCompleteMe配置
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
noremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
noremap g/ :YcmCompleter GetDoc<CR>
noremap gt :YcmCompleter GetType<CR>
noremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/usr/bin/python3"
let g:ycm_python_binary_path = "/usr/bin/python3"

