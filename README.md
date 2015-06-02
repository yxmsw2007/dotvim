# dotvim

## Installation

Copy .vimrc to your home path.

    $cd dotvim
    $cp .vimrc ~

Open vim and run command

    :PluginInstall

##  Customize shortcut keys

<CR>代表回车，<C-m>中的C代表Ctrl， <S-n>中的S代表Shift，<M-?>中的M代表Alt，<BS>代表后退键

### Leader

    ，

### 开关当前行折叠

    <space>

### 清除行尾空格

    cS

### 清除行未^M符号

    cM

### 插入模式下移动光标

上移

    <c-k>

下移

    <c-j>

左移(会删除左边的字符，不要用)

    <c-h>

右移

    <c-l>

### 复制

    <leader>c

### 剪切

    <leader>x

### 粘贴

    <leader>v

### 全选

    <leader>a

### 保存

    <leader>s

### 显示/隐藏菜单栏、工具栏、滚动条

    <c-F11>

### 保存、编译、连接并运行

    <F9>

### 保存并编译

    <c-F9>

### 保存并连接

    <c-F10>

### 添加作者信息

    author

### a.vim

用于切换C/C++头文件

    A或者<F12>     ---切换头文件并独占整个窗口
    AV             ---切换头文件并垂直分割窗口
    AS             ---切换头文件并水平分割窗口"

### auto-pairs

用于括号与引号自动补全，不过会与函数原型提示插件echofunc冲突所以我就没有加入echofunc插件

    <CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
    <BS>  : Delete brackets in pair
    <M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
    <M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
    <M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
    <M-b> : BackInsert (g:AutoPairsShortcutBackInsert)"

### echofunc

函数原形提示插件，配合ctags使用（ctags -R --fields=+lS），与auto-pairs冲突

下一个

    Alt+-

上一个

    Alt+=

### BufExplorer

快速轻松的在缓存中切换（相当于另一种多个文件间的切换方式）

在当前窗口显示缓存列表并打开选定文件

    <Leader>be 

水平分割窗口显示缓存列表，并在缓存列表窗口中打开选定文件

    <Leader>bs 

垂直分割窗口显示缓存列表，并在缓存列表窗口中打开选定文件"

    <Leader>bv 

### ccvext.vim

用于对指定文件自动生成tags与cscope文件并连接

如果是Windows系统, 则生成的文件在源文件所在盘符根目录的.symbs目录下(如: X:\.symbs\)

如果是Linux系统, 则生成的文件在~/.symbs/目录下

自动生成tags与cscope文件并连接

    <Leader>sy 

连接已存在的tags与cscope文件)"

    <Leader>sc 

### ctrlp.vim

一个全路径模糊文件，缓冲区，最近最多使用，... 检索插件；详细帮助见 :h ctrlp

    Ctrl + p 

### javacomplete

    <C-X><C-U>

    <C-S-Space>

### MiniBufExplorer

用Ctrl加方向键或<C-k,j,h,l>切换到上下左右的窗口中去

向前切換buffer

    <C-Tab>

向後切換buffer

    <C-S-Tab>

### neocomplcache

关键字补全、文件路径补全、tag补全等等，各种，非常好用，速度超快。

向前选择

    <c-p>

向后选择

    <c-n>

### nerdcommenter

我主要用于C/C++代码注释(其它的也行)

以下为插件默认快捷键，其中的说明是以C/C++为例的，其它语言类似

以每行一个 /* */ 注释选中行(选中区域所在行)，再输入则取消注释

    <Leader>ci 

以一个 /* */ 注释选中行(选中区域所在行)，再输入则称重复注释

    <Leader>cm 

以每行一个 /* */ 注释选中行或区域，再输入则称重复注释

    <Leader>cc 

取消选中区域(行)的注释，选中区域(行)内至少有一个 /* */

    <Leader>cu 

在/*...*/与//这两种注释方式中切换（其它语言可能不一样了）

    <Leader>ca 

行尾注释

    <Leader>cA 

### nerdtree

有目录树结构的文件浏览插件

    nt

### repeat

主要用"."命令来重复上次插件使用的命令

### SrcExpl

增强源代码浏览，其功能就像Windows中的"Source Insight"

    src

### Tagbar

    tb

### TagList

那里面列出了当前文件中的所有宏,全局变量, 函数名等

    tl

### ZoomWin

用于分割窗口的最大化与还原

    <c-w>o

### undotree

|u|, |<c-r>|, |g+|, |g-| as well as the |:earlier| and |:later|

### tabular

按等号、冒号、表格等来对齐文本插件

```vim

|1|2|
|one|two|

```

变成

```vim

| 1   | 2   |
| one | two |

```

可执行 

    Tab /|

如果想把第50行到55行按等号对齐,则可以执行 

    50,55Tab /=

如果想把当前行下5行按等号对齐,可以在normal模式下先输入5,然后再输入:Tab /=,变成如下命令执行

    .,.+4Tab \=

甚至你还可以先在visual模式下选择好文本,再输入:Tab /=,把选定行按等号对齐 

以下为本人自定义快捷键

    tab=        // :Tabularize /=
    tab<Bar>    // :Tabularize /<Bar>
    tab:        // :Tabularize /:\zs

### vim-markdown

安装此插件必须先安装tabular

    mdtab

### Visual-Mark

标记书签

    mm 

上一个

    Shift + F2

下一个

    F2

### grep

按照指定的规则在指定的文件中查找

    Grep  [<grep_options>] [<search_pattern> [<file_name(s)>]]

或

    F3

递归的grep

    Rgrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]

在所有打开的缓冲区中查找

    GrepBuffer  [<grep_options>] [<search_pattern>]

同上

    Bgrep  [<grep_options>] [<search_pattern>]

在vim的argument filenames (:args)中查找

    GrepArgs  [<grep_options>] [<search_pattern>]

运行fgrep

    Fgrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]

运行递归的fgrep

    Rfgrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]

运行egrep

    Egrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]

运行递归的egrep

    Regrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]

运行agrep

    Agrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]

运行递归的agrep

    Ragrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]

### code_complete

功能说明：

-   输入函数名后在输入(，然后按tab键就可以显示函数行参
-   常用语句if，while，switch等，输入后，按tab键就行
-   输入in后按tab，就是#include " "
-   输入is后按tab，就是#include < >
-   输入main后按tab，就是上图所示的那样，main函数就好了
-   输入cc后按tab，就是上图中的注释
-   输入ff后按tab，就是上图中的头文件，预处理宏
-   输入de后按tab，就是宏定义

### cscope

向前跳转

    Ctrl+]

向后跳转

    Ctrl+t

其他快捷键

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

### ctags

重新生成tag文件，并更新taglist

    F8

等效于

    ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .

### gvimfullscreen

用于Windows Gvim全屏窗口，可用F11切换，全屏后再隐藏菜单栏、工具栏、滚动条效果更好

    F11

### vimtweak

这里只用于窗口透明与置顶

增加不透明度

    Ctrl + Up

减少不透明度

    Ctrl + Down

窗口置顶

    <Leader>t



