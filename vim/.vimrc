call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plug options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plug outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" wxapp
Plug 'chemzqm/wxapp.vim'
setl omnifunc=csscomplete#CompleteCSS
setl omnifunc=wxmlcomplete#Complete


" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_disable_startup_warning = 1

" 状态栏插件
Plug 'vim-airline/vim-airline'
"vim-airline配置:优化vim界面"
"let g:airline#extensions#tabline#enabled = 1
" airline设置
" 显示颜色
set t_Co=256
set laststatus=2
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = ' '
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" 映射<leader>num到num buffer
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>


" taglist 
Plug 'https://gitee.com/mirrors/taglist.vim.git'
" 将taglist与ctags关联
let Tlist_Ctags_Cmd="/usr/bin/ctags"
" 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Show_One_File=1
" 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow=1
" 设置taglist窗口在右侧
let Tlist_Use_Right_Window=1
" 设置单击tag跳转到该tag定义的位置
let Tlist_Use_SingleClick=1
" 设置启动VIM自动打开taglist窗口
let Tlist_Auto_Open=0
" 设置taglist窗口横向显示
let Tlist_WinHeight=60
" 设置taglist窗口的宽度
let Tlist_WinWidth=44440
" 设置选中tag后自动关闭taglist窗口
let Tlist_Close_On_Select=1
" 设置打开taglist窗口输入焦点在taglist窗口
let Tlist_GainFocus_On_ToggleOpen=0

" 文件目录
Plug 'scrooloose/nerdtree'
"NERDTree快捷键
nmap <F2> :NERDTree  <CR>
autocmd vimenter * NERDTree " 自动开启
wincmd w
autocmd VimEnter * wincmd w
let g:NERDTreeShowLineNumbers=1 " 不显示行号
let g:NERDTreeHidden=1
" NERDTree.vim
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=0
let g:neocomplcache_enable_at_startup = 1
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

"括号自动匹配
Plug'jiangmiao/auto-pairs'

"彩虹括号
Plug 'kien/rainbow_parentheses.vim'
"彩虹括号
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"代码可视化缩进块
Plug 'nathanaelkane/vim-indent-guides'
"代码折叠
set foldmethod=indent
augroup AutoSaveFolds
  autocmd!
  au BufWinLeave ?* mkview 1
  au BufWinEnter ?* silent loadview 1
augroup END
"用空格来切换折叠状态
nnoremap <space> za

"git左边栏增删改提示
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()

" 添加退格
set backspace=2
"显示行号
set nu         
"高亮搜索
set hlsearch
set ruler
set showmode
syntax on
"使用空格代替缩进.tab默认2个（前端），后端默认4个是吧
set tabstop=4
set shiftwidth=4
set expandtab 
" 文件编码模式指定utf
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"智能缩进，当匹配到func main() {}
"当在大括号中间回车的时候，他会智能缩进，因为他知道括号中间要缩进
set smartindent

"自动缩进，当你第一行敲 tab + 文字 回车后 下一行自动给你加个 tab 
set autoindent
 
