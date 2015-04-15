
"=======================================================
"<CR>代表回车，<C-m>中的C代表Ctrl， <S-n>中的S代表Shift，
"<M-?>中的M代表Alt，<BS>代表后退键
"=======================================================


"=======================================================
"Vim内部字符编码
"=======================================================
"设置编码方式
set encoding=utf-8

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set nobomb

"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set scrolloff=3
set fenc=utf-8

"=======================================================
"选项设置
"=======================================================
"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
        
"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on

"关掉智能补全时的预览窗口
set completeopt=longest,menu 

"开启语法高亮功能
syntax enable

"Color Settings
set colorcolumn=85 "彩色显示第85行
set t_Co=256 "设置256色显示
set background=dark "使用color solarized

"设置光标高亮显示
set cursorline 

"光标垂直高亮
set cursorcolumn 

"鼠标滚动
set mouse=a 

"自动设置目录为正在编辑的文件所在的目录
"set autochdir                   

"代码折叠
set foldmethod=syntax "语法高亮折叠（补全在文件稍大时光标位于中间位置补全效率变慢http://www.th7.cn/Program/c/201401/169540.shtml）
"set foldmethod=indent "缩进折叠
"启动 vim 时不要自动折叠代码
set foldlevel=100 

"表明使用的是快速终端连接
set ttyfast

set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

"设置在编辑过程中右下角显示光标的行列信息
set ruler

"always show the status line
set laststatus=2


"设置C/C++方式自动对齐
set autoindent
set cindent

"智能对齐方式
set smartindent  

"设置自动缩进 
set ai!               

"没有保存的缓冲区可以自动被隐藏
set hidden
set noswapfile
set nowritebackup

"无限undo
"set undofile 

"自动换行
"set nowrap 
set wrap
"整词换行
set linebreak       

"显示行号
"set number 

"相对行号 要想相对行号起作用要放在显示行号后面
set relativenumber

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile

"自动载入配置文件不需要重启
autocmd! bufwritepost _vimrc source % 

"GUI界面里的字体，默认有抗锯齿
set guifont=Inconsolata:h12

"将-连接符也设置为单词
set isk+=-

"设置大小写敏感和聪明感知(小写全搜，大写完全匹配)
set ignorecase 
set smartcase

"替换时所有的行内匹配都被替换，而不是只有第一个
"set gdefault

" 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到
" 第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的
" 单词，依次类推，进行查找时，使用此设置会快速找到答案，当你
" 找要匹配的单词时，别忘记回车
set incsearch

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"高亮显示搜索结果
set hlsearch

"行号栏的宽度
set numberwidth=4 

"初始窗口的宽度
"set columns=135 

"初始窗口的高度
"set lines=50 

"初始窗口的位置
"winpos 620 45 

"让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
set whichwrap=b,s,<,>,[,] 

"插入模式下移动
imap <c-j> <down>
imap <c-k> <up>
imap <c-l> <right>
imap <c-h> <left>

imap jj <esc>

"修改vim的正则表达
nmap / /\v
vmap / /\v

"设置隐藏gvim的菜单和工具栏 F2切换
"set guioptions-=m
"set guioptions-=T

"去除左右两边的滚动条
"set go-=r
"set go-=L

"================================================================
"TAB和backspace设置
"================================================================
"配置backspace键工作方式
set backspace=indent,eol,start
"tab setting
"设置退格键可用
set backspace=2   
 
"设置按退格键时可以一次删除4个空格
set smarttab

"设置按退格键时可以一次删除4个空格
set softtabstop=4 

"设置Tab宽度
set tabstop=4

"设置自动对齐空格数
set shiftwidth=4

"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

"使用tab键来代替%进行匹配跳转
nmap <tab> %
vmap <tab> %

"================================================
"模仿windows快捷键
"================================================
"vmap <C-c> "yy
"vmap <C-x> "yd
"nmap <C-v> "yp
"vmap <C-v> "yp
"nmap <C-a> ggvG$

"================================================
"Learder键映射
"================================================
"修改leader键为逗号
let mapleader=","

"使用,v来选择刚刚复制的段落，这样可以用来缩进
nnoremap <leader>v v`]

"折叠html标签 ,fold tag
nnoremap <leader>ft vatzf

"tab切换
nmap <leader>t gt
nmap <leader>r gT

"取消搜索高亮
nmap <leader>n :noh<cr>

"html中的js加注释 取消注释
nmap <leader>h I//jj
nmap <leader>ch ^xx

"使用,w来垂直分割窗口，这样可以同时查看多个文件,如果想水平分割则<c-w>s
nmap <leader>w <c-w><c-w>l
nmap <leader>wc <c-w>c
nmap <leader>ww <c-w>w

"切换到当前目录
nmap <leader>q :execute "cd" expand("%:h")<CR>

"搜索替换
nmap <leader>s :1,%s///cg<left><left><left><left>

"取消粘贴缩进
nmap <leader>p :set paste<CR>
nmap <leader>pp :set nopaste<CR>

"文件类型切换
nmap <leader>fj :set ft=javascript<CR>
nmap <leader>fc :set ft=css<CR>
nmap <leader>fh :set ft=html<CR>
nmap <leader>fm :set ft=mako<CR>
nmap <leader>fs :set ft=swig<CR>

"<leader>空格快速保存
nmap <leader><space> :w<cr>

"================================================
"Vundle管理插件
"Vubdle安装git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"配置Github网站上非vim-scripts仓库的插件（Plugin 'tpope/vim-fugitive'）
"配置vim-scripts仓库里的http://vim-scripts.org/vim/scripts.html插件（Plugin 'L9'）
"配置Git的插件但不是托管在GitHub上（Plugin 'git://git.wincent.com/command-t.git'）

"plugin on GitHub repo(Plugin 'tpope/vim-fugitive')
"plugin from http://vim-scripts.org/vim/scripts.html(Plugin 'L9')
"Git plugin not hosted on GitHub(Plugin 'git://git.wincent.com/command-t.git')
"git repos on your local machine (i.e. when working on your own plugin)(Plugin 'file:///home/gmarik/path/to/plugin')
"The sparkup vim script is in a subdirectory of this repo called vim.
"Pass the path to set the runtimepath properly.(Plugin 'rstacruz/sparkup', {'rtp': 'vim/'})
"Avoid a name conflict with L9(Plugin 'user/L9', {'name': 'newL9'})
"================================================
"Vundle的路径
set rtp+=~/.vim/bundle/Vundle.vim

"vundle开启
call vundle#begin()

"配置Vundle插件
Plugin 'gmarik/Vundle.vim'

"omnifunc配置
setlocal completefunc=javacomplete#CompleteParamsInfo
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"omnifunc'配置
"setlocal omnifunc=javacomplete#Complete
" Only do this part when compiled with support for autocommands.
if has("autocmd")
  autocmd Filetype java setlocal omnifunc=javacomplete#Complete
endif

if has("autocmd") && exists("+omnifunc")
     autocmd Filetype *
   \ if &omnifunc == "" |
   \   setlocal omnifunc=syntaxcomplete#Complete |
   \ endif
endif


"装上总报错
Plugin 'ctags.vim'
"按下F9重新生成tag文件，并更新taglist
"ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
"--c++-kinds=+p  : 为C++文件增加函数原型的标签
"--fields=+iaS   : 在标签文件中加入继承信息(i)、类成员的访问控制信息(a)、以及函数的指纹(S)
"--extra=+q      : 为标签增加类修饰符。注意，如果没有此选项，将不能对类成员补全
nmap <F9> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags "add current directory's generated tags file
"let g:ctags_path='/path/to/ctags'
"let g:ctags_args='-I __declspec+' 

Plugin 'taglist.vim'
let Tlist_Exit_OnlyWindow=1
"因为我们放在环境变量里，所以可以直接执行
let Tlist_Ctags_Cmd='ctags' 
"让窗口显示在右边，0的话就是显示在左边
let Tlist_Use_Right_Window=1 
"让taglist可以同时展示多个文件的函数列表
"let Tlist_Show_One_File=1
let Tlist_Show_One_File=0 
"非当前文件，函数列表折叠隐藏
let Tlist_File_Fold_Auto_Close=1 
"当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Exit_OnlyWindow=1 
"实时更新tags
let Tlist_Process_File_Always=1
let Tlist_Inc_Winwidth=0
"启动vim后自动打开taglist窗口
let Tlist_Auto_Open = 1
"设置taglist窗口大小
"let Tlist_WinHeight = 100
let Tlist_WinWidth = 30


"文件浏览和窗口管理插件，快捷键wm
Plugin 'winmanager'
let g:winManagerWidth = 40
"let g:NERDTree_title="[NERDTree]"  
let g:winManagerWindowLayout='FileExplorer|TagList,minibufexpl'
"let g:winManagerWindowLayout='NERDTree|TagList'
nmap wm :WMToggle<cr>
"let g:AutoOpenWinManager = 1 
let g:AutoOpenWinManager = 0
"function! NERDTree_Start()  
"exec 'NERDTree'  
"endfunction  
"function! NERDTree_IsValid()  
"return 1  
"endfunction 

"按等号、冒号、表格等来对齐文本插件
"|1|2|
"|one|two|
"变成
"| 1   | 2   |
"| one | two |
"可执行 :Tab /|
Plugin 'godlygeek/tabular'

"安装此插件必须先安装tabular
Plugin 'plasticboy/vim-markdown'
"let g:vim_markdown_folding_disabled=1
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1

"状态栏主题插件
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1

"TAB键映射插件，快捷键<C-X><C-O>（自动补全），似乎与快捷键冲突无效过
Plugin 'SuperTab'
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

Plugin 'snipMate'

Plugin 'javacomplete'
"completefunc'配置
setlocal completefunc=javacomplete#CompleteParamsInfo
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>

"缓冲区窗口管理插件
Plugin 'minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplMoreThanOne=0 
"let g:miniBufExplorerMoreThanOne=0 

"头文件切换插件，快捷键F12
Plugin 'a.vim'
nnoremap <silent> <F12> :A<CR> 

"Grep快速查找插件，快捷键F3
Plugin 'grep.vim'
nnoremap <silent> <F3> :Grep<CR> 

"书签插件，快捷键：下一个F2，上一个Shift + F2(终端bug无法使用)
Plugin 'Visual-Mark'

"缩进提示线插件
Plugin 'Yggdroot/indentLine'
set list lcs=tab:\·\ 
let g:indentLine_char = '┊' 
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '˰'

"函数原形提示插件，配合ctags使用（ctags -R --fields=+lS），快捷键：下一个Alt+-，上一个Alt+=
Plugin 'echofunc.vim'
let g:EchoFuncShowOnStatus = 1 

"PowerLine插件 状态栏增强展示
"Bundle 'Lokaltog/vim-powerline'
"vim有一个状态栏 加上powline则有两个状态栏
let g:Powline_symbols='fancy'

"树形目录插件
Plugin 'The-NERD-tree'
"自动打开NERDTree
"autocmd BufRead * 25vsp ./
"let g:NERDTreeWinSize = 10
"let NERDTreeWinSize=100

"自动匹配括号插件
"System Shortcuts:
"    <CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
"    <BS>  : Delete brackets in pair
"    <M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
"    <M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
"    <M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
"    <M-b> : BackInsert (g:AutoPairsShortcutBackInsert)
Plugin 'jiangmiao/auto-pairs'
let g:AutoPairsFlyMode = 1

Plugin 'scrooloose/nerdcommenter'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'

"命令|u|, |<c-r>|, |g+|, |g-| as well as the |:earlier| and |:later|
Plugin 'mbbill/undotree'
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
set undodir='~/.undodir/'
set undofile
endif

"vundle结束
call vundle#end()  

"启动智能补全，放置在Bundle的设置后，防止意外BUG
filetype plugin indent on

"语法高亮
syntax on

