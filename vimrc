" 关闭兼容模式
set nocompatible

" 语法高亮
syntax on

" 关闭默认的启动信息
set shortmess+=I

" 显示行号
set number

" 显示相对行号
set relativenumber

" 底部显示状态栏
set laststatus=2

" 配置退格键的行为
set backspace=indent,eol,start

" 设置隐藏缓冲区
set hidden

" 智能大小写搜索
set ignorecase
set smartcase

" 输入时动态搜索
set incsearch

" 解除一些无用的默认绑定
nmap Q <Nop>	" Q进入Ex模式，一般没用

" 禁用铃声
set noerrorbells visualbell t_vb=

" 启用鼠标支持
set mouse+=a

" 禁用箭头键移动
" 标准模式
nnoremap <Left>		:echoe "Use h"<CR>
nnoremap <Right>	:echoe "Use l"<CR>
nnoremap <Up> 		:echoe "Use k"<CR>
nnoremap <Down> 	:echoe "Use j"<CR>
" 插入模式
inoremap <Left>		<ESC>:echoe "Use h"<CR>
inoremap <Right>	<ESC>:echoe "Use l"<CR>
inoremap <Up> 		<ESC>:echoe "Use k"<CR>
inoremap <Down> 	<ESC>:echoe "Use j"<CR>


" 设置背景
set background=dark

" 根据文件后缀加载缩进规则和插件
filetype plugin indent on

" 设置ctrlp路径
set runtimepath^=~/.vim/pack/vendor/start/ctrlp.vim
" 设置ctrlp快捷键
let g:ctrlp_map ='<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode ='ra' "设置默认路径为当前路径

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set autowrite		" Automatically save before commands like :next and :make


setlocal noswapfile " 不要生成swap文件
set bufhidden=hide " 当buffer被丢弃的时候隐藏它
colorscheme evening " 设定配色方案
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为 2
set softtabstop=2 " 使得按退格键时可以一次删掉 2 个空格
set tabstop=2 " 设定 tab 长度为 2
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
set hlsearch " 搜索时高亮显示被找到的文本
set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set smartindent " 开启新行时使用智能自动缩进
set cmdheight=1 " 设定命令行的行数为 1
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为 1
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠

" plug
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'wikitopian/hardmode'
call plug#end()
