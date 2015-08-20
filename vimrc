" ==================== Vundle
set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
" Plugin 'lsdr/monokai'
" Plugin 'crusoexia/vim-monokai'
Plugin 'othree/yajs.vim'
" ==================== Vundle End

syntax enable
"set nofoldenable

set t_Co=256

let mapleader=";"

" 開啓文件類型偵測
filetype on
" 根據偵測到的不同類型加載對應的插件
filetype plugin on

" ==================== Keymap
" 行首和行尾
nmap lb 0
nmap le $
" 選中文本快速復制到系統剪貼板
vnoremap <Leader>y "+y
" 將系統剪貼板內容貼至 vim
nmap <Leader>p "+p
" 關閉當前分割窗口
nmap <Leader>q :q<CR>
" 保存當前窗口內容
nmap <Leader>w :w<CR>
" 保存所有窗口內容並退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存 直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次走遍子窗口
nnoremap nw <C-W><C-W>
" 轉跳至右方窗口
nnoremap <Leader>lw <C-W>l
" 轉跳至上方窗口
nnoremap <Leader>hw <C-W>h
" 轉跳至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 轉跳至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 關閉子窗口
" nnoremap <Leader>c <C-W>c
" 在助記pair轉跳
nmap <Leader>pa %
" Page Up & Down
nnoremap <Leader>b <C-b>
nnoremap <Leader>f <C-f>
" tag功能
" nnoremap <Leader>j <C-]>
" nnoremap <Leader>b <C-o>
" Switch between files in buffer
"nnoremap <C-Tab> :bn<CR>
nnoremap <Leader><Tab> :bn<CR>
"nnoremap <C-S-Tab> :bp<CR>
" Display QuickFix Window
nnoremap <Leader>qf :cope<CR>
" Buffer cmd
"map <C-b>n  :bnext<CR>
"map <C-b>p  :bprev<CR>

" 搜尋 vim 命令補全等設置:
" 开启实时搜索功能
" 開啓搜尋功能
set incsearch
" 搜尋時大小寫不敏感
set ignorecase
" 關閉兼容模式
set nocompatible
" vim 自身命令行模式智能補全
set wildmenu
" ==================== Keymap end

" ==================== Keymap Plugin
" 设置跳转的快捷键，可以跳转到definition和declaration  
"nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
"nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>  
"nmap <F4> :YcmDiags<CR> 
" YCM 集成 OmniCppComplete 補全引擎，設置其快捷鍵
inoremap <leader>; <C-x><C-o>
" ProjectRoot
nnoremap <leader>dp :ProjectRootCD<cr>
" To grep with your project as base directory, you could add something like:
nnoremap <leader>g :ProjectRootExe grep<space>
" To start the command line with :e /my/path/to/project/, you could use this:
nnoremap <expr> <leader>ep ':edit '.projectroot#guess().'/'
" If you would like NERDTree to always open at the root of your project, try adding something like this to your vim config:
nnoremap <silent> <leader>dt :ProjectRootExe NERDTreeFind<cr>
" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" PHP namespace
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>
" ==================== Keymap Plugin End

" ==================== Theme
" Setting theme
colorscheme monokai
let g:monokai_italic = 1
let g:monokai_zentree = 1

"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1
" ==================== Theme End

" 基于缩进或语法进行代码折叠
" set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
"  操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠。效果如下

" ==================== Coding Settings
"set background=dark 
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8
"" Display line numbers on the left
set number
 
"" Use mouse (only for resizing!)
set mouse=a
 
" Set the focus to the correct screen (ok, no more mouse thingies)
set mousefocus
 
" No more annoying sounds
set visualbell
 
" Do not scroll sideways unless we reach the end of the screen
set sidescrolloff=0
 
" highlight the status bar when in insert mode
if version >= 700
    if has("gui_running")
        au InsertEnter * hi StatusLine guifg=black guibg=green
        au InsertLeave * hi StatusLine guibg=black guifg=grey
    else
        au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
        au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
    endif
endif
 
" Infere the case-sensitivity
set infercase
 
" Need to set this flag on in order to have many cool features on
set nocompatible
 
" Indent properly based on the current file
filetype indent plugin on
filetype plugin on
 
" Pathogen load
"filetype off " Makes syntax non-working on office box
call pathogen#infect()
call pathogen#helptags()
 
" Change default fontsize to fit MacBook Pro 13'
" set guifont=Monaco:h11
 
" Don't select first Omni-completion option
set completeopt=longest,menuone
"set completeopt=menuone,longest,preview
 
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set incsearch     " show search matches as you type
set expandtab
set shiftwidth=4
set softtabstop=4
 
" Always set the current file directory as the local current directory
autocmd BufEnter * silent! lcd %:p:h
 
" Enable folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
 
set history=1000         " remember more commands and search history
set undolevels=1000      " use many levels of undo
 
" Tabs in command line mode behave like bash
set wildmode=longest,list,full
set wildmenu
 
" Highlight the entire word when searching for it
set hlsearch
 
"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======
"exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
"set list
 
" Move line by line even when the line is wrapped
map j gj
map k gk
 
" Persistent undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
" ==================== Coding Settings End

" ==================== My Personal Settings
" Disable all Scrollbar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set completeopt=menu;
" ==================== My Personal Settings End

" ==================== Plugin Settings
" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" YCM 補全選單配色
" 選單
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 選單項目
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 補全功能在注解中同樣有效
let g:ycm_complete_in_comments=1
" 允許 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 開啓 YCM 標籤補全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 標準庫tags
set tags+=/usr/include/c++/4.6/stdcpp.tags
" 補全内容不以分割子窗口形式出现，只顯示補全列表
set completeopt-=preview
" 以第一個鍵入字符就開始列出匹配項目
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项目
let g:ycm_cache_omnifunc=0
" 語法關鍵字補全
let g:ycm_seed_identifiers_with_syntax=1

" NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }

" ctrlp-funky
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']


" search first in current directory then file directory for tag file
" It tells Vim to look for a tags file in the directory of the current file as well as in the working directory, and up, and up, and…
set tags=./tags;,tags;
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


" Disable 'Scratch' View
set completeopt-=preview

set laststatus=2

function! <SID>AutoProjectRootCD()
  try
    if &ft != 'help'
      ProjectRootCD
    endif
  catch
    " Silently ignore invalid buffers
  endtry
endfunction

autocmd BufEnter * call <SID>AutoProjectRootCD()
" ==================== Plugin Settings End