""""""""""""""" 快捷键绑定 """"""""""""""""
let mapleader = ','

map <silent> <leader>v :e ~/.vimrc<cr>
map <silent> <leader>s :source ~/.vimrc<cr>
map <silent> <leader>pp :setlocal paste!<cr>
map <leader>g :vimgrep // **/*<left><left><left><left><left><left>
map <right> :bn!<cr>
map <left> :bp!<cr>

vmap <silent> * :call VisualSearch('f')<CR>
vmap <silent> # :call VisualSearch('b')<CR>
vmap <silent> gv :call VisualSearch('gv')<CR>

nmap <silent> <leader>/ :nohlsearch<CR>

cmap cd. lcd %:p:h
cmap w!! w !sudo tee % >/dev/null

noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l
noremap <C-H> <C-W>h
noremap <S-H> gT
noremap <S-L> gt
noremap ; :

nnoremap 0 ^
nnoremap j gj
nnoremap k gk
nnoremap Y y$

inoremap jk <Esc>

""""""""""" 插件 """"""""""""""

" 插件管理工具
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle "gmarik/vundle"

" 光标快速移动
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_keys = 'asdfghjkl;'
let g:EasyMotion_grouping = 1
let g:EasyMotion_do_shade = 1
let g:EasyMotion_leader_key = '<Leader><Leader>'
let g:EasyMotion_mapping_f = 'ff'
let g:EasyMotion_mapping_F = 'FF'
autocmd VimEnter,Colorscheme * :hi EasyMotionTarget ctermbg=none ctermfg=green
autocmd VimEnter,Colorscheme * :hi EasyMotionShade  ctermbg=none ctermfg=black

" 增强状态栏
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'compatible'
let g:Powerline_colorscheme = 'solarized16'

" 代码片段管理
Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories  = ["snippets", "bundle/ultiSnips/UltiSnips"]

" php代码风格修正工具
Bundle 'stephpy/vim-php-cs-fixer'
let g:php_cs_fixer_level = "all"
let g:php_cs_fixer_config = "default"
let g:php_cs_fixer_php_path = "php"
let g:php_cs_fixer_fixers_list = "controls_spaces,elseif,eof_ending,extra_empty_lines,php_closing_tag,braces,include,short_tag,return,visibility,unused_use,trailing_spaces,linefeed"
let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_dry_run = 0
let g:php_cs_fixer_verbose = 0
nnoremap <silent> <leader>f :call PhpCsFixerFixFile()<CR> :e <CR>

" 括号补全
Bundle 'Townk/vim-autoclose'
let b:AutoCloseSelectionWrapPrefix = '<leader>a'
let g:AutoClosePairs = "() {} \" ' [] `"

" 代码补全
Bundle 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion = ['<c-n>']
let g:ycm_key_list_previous_completion = ['<c-p>']

" git状态侧边栏
Bundle 'airblade/vim-gitgutter'
let g:gitgutter_highlight_lines = 0
let g:gitgutter_escape_grep = 1
let g:gitgutter_eager = 1
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_modified_removed = '~-'

" solarized配色
Bundle 'altercation/vim-colors-solarized'
color solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" 自动对齐工具
Bundle 'godlygeek/tabular'

" Python代码风格
Bundle 'hynek/vim-python-pep8-indent'

" 查找文件工具
Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_by_filename = 0
nnoremap <C-o> :CtrlPBuffer<CR>
nnoremap <C-m> :CtrlPMRU<CR>
nnoremap <C-e> :CtrlPClearCache<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|build$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.DS_Store$\|\.pyc$' }

" tag列表
Bundle 'majutsushi/tagbar'
nnoremap <silent> <leader>t :TagbarToggle<CR>

" html自动补全
Bundle 'mattn/zencoding-vim'

" 注释工具
Bundle 'scrooloose/nerdcommenter'

" 文件列表
Bundle 'scrooloose/nerdtree'
"let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.DS_Store']
let NERDTreeShowHidden=1
map <leader>n :NERDTreeToggle<CR>:NERDTreeMirror<CR>

" 代码风格检查
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=1
let g:syntastic_php_checkers=['php', 'phpcs']

" git工具
Bundle 'tpope/vim-fugitive'

" 代码域选择
Bundle 'terryma/vim-expand-region'
map <Up> <Plug>(expand_region_expand)
map <Down> <Plug>(expand_region_shrink)

" 多光标
Bundle 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<ESC>'

" php自动补全
Bundle 'shawncplus/phpcomplete.vim'
let g:phpcomplete_complete_for_unknown_classes = 0

" php命名空间
Bundle 'arnaud-lb/vim-php-namespace'
inoremap <leader>u <C-O>:call PhpInsertUse()<CR>
inoremap <leader>e <C-O>:call PhpExpandClass()<CR>
noremap <leader>u :call PhpInsertUse()<CR>
noremap <leader>e :call PhpExpandClass()<CR>

" 各种代码高亮/缩进工具
Bundle 'Glench/Vim-Jinja2-Syntax'

Bundle 'rodjek/vim-puppet'

Bundle 'tpope/vim-markdown'

Bundle 'vim-scripts/nginx.vim'

Bundle 'othree/html5.vim'

Bundle 'sprsquish/thrift.vim'

"""""""""""""""""""""" 环境变量 """"""""""""""""""""""""
set nocompatible               " must be first line
set background=dark            " Assume a dark background

set fencs=utf-8,gb2312,gbk     " Sets the default encoding
set background=dark            " Assume a dark background
filetype plugin indent on      " Automatically detect file types.
syntax on                      " syntax highlighting
set autochdir                  " always switch to the current file directory.

set nospell                    " spell checking off
set shortmess+=filmnrxoOtT     " abbrev. of messages (avoids 'hit enter')
set virtualedit=onemore        " allow for cursor beyond last character
set history=1000               " Store a ton of history (default is 20)

set noswapfile
set backup                     " backups are nice ...
set backupdir=~/.vim/backup
set undofile                   " persistent undo
set undolevels=1000            " maximum number of changes that can be undone
set undoreload=10000           " maximum number lines to save for undo on a buffer reload
set undodir=~/.vim/undo
set tags=./tags;/,~/.vimtags   " set tags path

set completeopt-=preview       " omnicomplete without preview

let g:clipbrdDefaultReg='+'

"""""""""""""""""""""""""" 用户界面 """"""""""""""""""""""""
if has('gui_running')
    set t_Co=256
    set guifont=Monaco:h14     " set gui font
    set guioptions-=T          " remove the toolbar
    set guioptions-=L          " remove the left scrollbar
    set guioptions-=r          " remove the right scrollbar
else
    set term=builtin_xterm         " Make terminal stuff works
    set t_Co=256
endif

set tabpagemax=15             " only show 15 tabs
set showmode                  " display the current mode

set nocursorline                " highlight current line
if has('cmdline_info')
    set ruler                      " show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd                    " show partial commands in status line and selected characters/lines in visual mode
endif

set laststatus=2
set backspace=indent,eol,start " Backspace for dummys
set linespace=0                " No extra spaces between rows
set number                     " Line numbers on
set showmatch                  " Show matching brackets/parenthesis
set incsearch                  " Find as you type search
set hlsearch                   " Highlight search terms
set winminheight=0             " Windows can be 0 line high
set ignorecase                 " Case insensitive search
set smartcase                  " Case sensitive when uc present
set wildmenu                   " Show list instead of just completing
set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]  " Backspace and cursor keys wrap to
set scrolljump=5               " Lines to scroll when cursor leaves screen
set scrolloff=3                " Minimum lines to keep above and below cursor
set foldmethod=marker          " Markers are used to specify folds.
set gdefault                   " The /g flag on :s substitutions by default
set hidden                     " Change buffer - without saving
set magic                      " Set magic on, for regular expressions
set autoread                   " Auto reload file on change
set list
set listchars=tab:>\ ,trail:\ ,extends:#,nbsp:\  " Highlight problematic whitespace

"""""""""""""" 格式 """""""""""""""""""""
set wrap          " wrap long lines
set lbr           " set linebreak
set tw=0          " sets the text width
set ai            " Auto indent
set si            " Smart indet
set expandtab     " tabs are spaces, not tabs
set shiftwidth=4  " use indents of 4 spaces
set tabstop=4     " an indentation every four columns
set softtabstop=4 " let backspace delete indent

"""""""""""""""""""""" OmniComplete配置 """""""""""""""""""
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
        \if &omnifunc == "" |
        \setlocal omnifunc=syntaxcomplete#Complete |
        \endif
endif

hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

""""""""""""""""""" 语言高亮 缩进配置 """"""""""""""""""""
" Indent Fixes
    autocmd FileType css,javascript,puppet,yaml,html set shiftwidth=4
    autocmd FileType css,javascript,puppet,yaml,html set tabstop=4
    autocmd FileType css,javascript,puppet,yaml,html set softtabstop=4

" Python
    " Highlight 80 column
    autocmd FileType python set cc=80

" Thrift
    autocmd BufRead,BufNewFile *.thrift set filetype=thrift

" Puppet
    autocmd BufRead,BufNewFile *.pp set filetype=puppet

" Nginx
    autocmd BufRead,BufNewFile /etc/nginx/* set filetype=nginx
    autocmd BufRead,BufNewFile /usr/local/etc/nginx/* set filetype=nginx

" Twig
    autocmd BufRead,BufNewFile *.twig set filetype=jinja

""""""""""""""""""""" 其他 """""""""""""""""""""
autocmd! BufWritePost ~/.vimrc source ~/.vimrc
autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
autocmd FocusLost * :silent! wall
autocmd FocusLost * call feedkeys("\<C-\>\<C-n>")

" Search selection
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        execute "vimgrep /" . l:pattern . "/" . " **/*"
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Get paste status
function! HasPaste()
  if &paste
      return 'PASTE MODE  '
  else
      return ''
  endif
endfunction

" Restore cursor position to where it was before
augroup JumpCursorOnEdit
   au!
   autocmd BufReadPost *
        \ if expand("<afile>:p:h") !=? $TEMP |
        \   if line("'\"") > 1 && line("'\"") <= line("$") |
        \     let JumpCursorOnEdit_foo = line("'\"") |
        \     let b:doopenfold = 1 |
        \     if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
        \        let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
        \        let b:doopenfold = 2 |
        \     endif |
        \     exe JumpCursorOnEdit_foo |
        \   endif |
        \ endif
   " Need to postpone using "zv" until after reading the modelines.
   autocmd BufWinEnter *
        \ if exists("b:doopenfold") |
        \   exe "normal zv" |
        \   if(b:doopenfold > 1) |
        \       exe  "+".1 |
        \   endif |
        \   unlet b:doopenfold |
        \ endif
augroup END

" Cscope
if has("cscope")
    set nocscopetag
    set cscopetagorder=1
    set nocscopeverbose
    let cscope_out=findfile("cscope.out", ".;")
    let cscope_pre=matchstr(cscope_out, ".*/")
    if !empty(cscope_out) && filereadable(cscope_out)
        execute 'cs add' cscope_out cscope_pre
    endif

    nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
endif

"""""""""""""" 本地配置 """"""""""""""""""""
if filereadable(expand("~/.vimrc_local"))
    source ~/.vimrc_local
endif

