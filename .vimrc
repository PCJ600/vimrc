set nocompatible					" 去掉有关vi的一致性模式	
syntax on							" 语法高亮

" 实用设置
set mouse=a							" 启用鼠标
set wildmenu						" 普通模式输入指令,按tab自动补全
set backspace=indent,eol,start		" 使能退格键
filetype on						" 侦测文件类型
filetype plugin on					" 载入文件类型插件
filetype indent on					" 为特定文件类型载入相关缩进文件

" 改键
map s <nop>							
map S :w<CR>						
map Q :q<CR>						
map R :source ~/.vimrc<CR>			

noremap H 7h
noremap J 5j
noremap K 5k
noremap L 7l

" 显示设置
set number							" 显示行号
"set norelativenumber				" 显示相对行号
set cursorline						" 设置标尺
set wrap							" 不超出屏幕
set showcmd							" 显示输入的命令
set tabstop=4						" 设置tab为4个空格 

" 搜索设置
set hlsearch						" 设置搜索高亮
exec "nohlsearch"
set incsearch						" 设置逐字符高亮
set ignorecase						" 忽略大小写
set smartcase						" 智能大小写
noremap <LEADER><CR> :nohlsearch<CR>

" 分屏
map sl :set splitright<CR>:vsplit<CR>		" 向右分屏
map sh :set nosplitright<CR>:vsplit<CR>		" 向左分屏
map sk :set nosplitbelow<CR>:split<CR>		" 向上分屏
map sj :set splitbelow<CR>:split<CR>		" 向下分屏

map <LEADER>l <C-w>l						" 向右移动
map <LEADER>j <C-w>j						" 向下移动
map <LEADER>h <C-w>h						" 向左移动
map <LEADER>k <C-w>k						" 向上移动


" 配色
color default						" 选择配色方案


" 文件编码
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

" 插件管理
call plug#begin('~/.vim/plugged')
"Plugin 'vim-scripts/Solarized.git'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
call plug#end()


" nerdtree配置
map tt :NERDTreeToggle<CR>
let NERDTreeWinSize=25






