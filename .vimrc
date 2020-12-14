set nocompatible              " be iMproved
filetype off                  " required

"<BS>           Backspace
"<Tab>          Tab
"<CR>           Enter
"<Enter>        Enter
"<Return>       Enter
"<Esc>          Escape
"<Space>        Space
"<Up>           Up arrow
"<Down>         Down arrow
"<Left>         Left arrow
"<Right>        Right arrow
"<F1> - <F12>   Function keys 1 to 12
"#1, #2..#9,#0  Function keys F1 to F9, F10
"<Insert>       Insert
"<Del>          Delete
"<Home>         Home
"<End>          End
"<PageUp>       Page-Up
"<PageDown>     Page-Down

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'https://github.com/VundleVim/Vundle.vim.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/majutsushi/tagbar'
"Plugin 'https://github.com/wincent/command-t.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'https://github.com/vim-scripts/LustyExplorer.git'
Plugin 'https://github.com/mileszs/ack.vim.git'
Plugin 'https://github.com/tomtom/tcomment_vim'
Plugin 'https://github.com/ericcurtin/CurtineIncSw.vim.git'
" Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'https://github.com/ajh17/VimCompletesMe'

Plugin 'https://github.com/Shougo/deoplete.nvim'
Plugin 'https://github.com/roxma/nvim-yarp'
Plugin 'https://github.com/roxma/vim-hug-neovim-rpc'
Plugin 'https://github.com/tpope/vim-surround'

" swift plugins
" Plugin 'https://github.com/toyamarinyon/vim-swift.git'
Plugin 'https://github.com/kballard/vim-swift.git'
" Plugin 'https://github.com/keith/swift.vim.git'

" kotlin plugins
" Plugin 'https://github.com/udalov/kotlin-vim.git'

" rust plugins
Plugin 'https://github.com/rust-lang/rust.vim.git'

"Plugin 'Shougo/deoplete.nvim'
"Plugin 'roxma/nvim-yarp'
"Plugin 'roxma/vim-hug-neovim-rpc'
"Plugin 'zchee/deoplete-go', { 'do': 'make'}

"Plugin 'racer-rust/vim-racer'
"Plugin 'mdempsky/gocode', {'rtp': 'vim/'}
"Plugin 'nsf/gocode', {'rtp': 'vim/'}
"Plugin 'fatih/vim-go'

" Plugin 'https://github.com/ziglang/zig.vim'

call vundle#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 0
set pyxversion=3

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" uses tags file
set omnifunc=syntaxcomplete#Complete

set belloff=all
set mouse=a
set ruler
syntax on
set backspace=indent,eol,start
set listchars=eol:$,tab:>=

set viminfo=
set nobackup        " save original file when file is edited
set nowritebackup   " save original file while it is edited but not yet saved
set noswapfile      " save changes made to the buffer
set noundofile      " undo operations work until vim is closed, this is default
"set undofile       " undofile opion saves operations to undo when vim is closed
"set undodir=$HOME/.vim/vimundo     " directory must exists

set encoding=utf8
set hlsearch
set incsearch
" set nomodifiable    "default readonly
" set smartcase       " lowercase pattern will select both, uppercase pattern will select only uppercase
set ignorecase      "case insensitive search, uppercase will select both
set cursorline      "cursorline
set cursorcolumn    " cursorcolumn
set expandtab       "expand tabs with spaces
set tabstop=4
set shiftwidth=4
set textwidth=1000
set scrolloff=3     "start scrolling when cursor is 3 lines away from top or bottom
set relativenumber  "show number lines relative
set number          "show current line number
set showcmd         "show command while entering
set wildmenu        "show menu line below

" set termwinsize=35x0  " 35 lines with unlimited line length
" set termwinkey=_w     " key instead of <C-W>
" tnoremap <Esc> <C-W>N " do not uncomment this line ... history lookup in bash does not work
" set notimeout ttimeout timeoutlen=100 " TODO: check this command
nmap _b :terminal<CR><C-W>W:quit<CR>
tmap <a-up>    <C-W>N:tabnew<CR>
tmap <a-down>  <C-W>N:tabclose<CR>
tmap <a-right> <C-W>N:tabnext<CR>
tmap <a-left>  <C-W>N:tabNext<CR>

" autocmd BufRead,BufNewFile *.a51 set filetype=masm
autocmd BufRead,BufNewFile *.a51 set filetype=asm8051
autocmd BufRead,BufNewFile *.p51 set filetype=plm
autocmd BufRead,BufNewFile *.P51 set filetype=plm
autocmd BufRead,BufNewFile *.dcl set filetype=plm
autocmd BufRead,BufNewFile *.DCL set filetype=plm
autocmd BufRead,BufNewFile *.fs set filetype=fsharp
autocmd BufRead,BufNewFile *.fs set syntax=fsharp
autocmd BufRead,BufNewFile *.kt set filetype=kotlin
autocmd BufRead,BufNewFile *.kt set syntax=kotlin
autocmd BufRead,BufNewFile *.sc set filetype=scala
autocmd BufRead,BufNewFile *.scala set syntax=scala
autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.go set syntax=go
autocmd BufRead *.go normal zR
autocmd BufReadPost,BufNewFile *.txt,*.tex setlocal textwidth=80
colorscheme Monokai
set clipboard=unnamed
set nowrap
set autoread                            "reread file when file changed externally
autocmd CursorHold,CursorHoldI * checktime   "call autoread

nmap _n :nohlsearch<enter>
nmap _m :set modifiable<enter>
nmap + :set modifiable<enter>       "works when keyboard numpad is enabled
nmap - :set nomodifiable<enter>     "works when keyboard numpad is enabled
nmap _e :echo "okay"
nmap _v :version<enter>
nmap _w :wincmd o<enter>
nmap __ :bnext <enter>
nmap _# :bNext <enter>
nmap _r :call BuildRun()<enter>
tnoremap <s-right> <C-\><C-n><C-w>h
tnoremap <s-down> <C-\><C-n><C-w>j
tnoremap <s-up> <C-\><C-n><C-w>k
tnoremap <s-left> <C-\><C-n><C-w>l
" nmap <s-up> : wincmd k <cr>
" nmap <s-down> : wincmd j <cr>
" nmap <s-left> : wincmd h <cr>
" nmap <s-right> : wincmd l <cr>
" tnoremap <s-up> : wincmd k <cr>
" tnoremap <s-down> : wincmd j <cr>
" tnoremap <s-left> : wincmd h <cr>
" tnoremap <s-right> : wincmd l <cr>

function BuildRun()
    let extension=expand('%:e')
    if extension == "rs"
        :!cargo run
    elseif extension == "c"
        :!gcc -c -Wall "%" && echo "compiled"
    endif
endfunction

" c-like line comments
nmap _c  ^i//<ESC>j     " comment out from line column 0
nmap _C  ^xxj           " remove corresponding comment
nmap _cx I//<esc>j      " comment out from first characters on the line
nmap _CX I<esc>lxxj     " remove corresponding comment
" shell-lile line comments
nmap _cc ^i#<ESC>j
nmap _CC ^xj

" scroll screen up and down while line remains at fixed position
nmap <c-j> <c-E>j
nmap <c-k> <c-Y>k

"autocmd == au
"autocmd BufReadPre,BufWritePre *.go : call Gofmt()
autocmd BufWritePost *.go : call Gofmt()
autocmd BufWritePost *.rs : call Rustfmt()
autocmd BufWritePost *.cs : call Cppfmt()
autocmd BufWritePost *.c : call Cppfmt()
autocmd BufWritePost *.h : call Cppfmt()
autocmd BufWritePost *.cpp : call Cppfmt()

function Gofmt()
    :silent exec "!go fmt '%'"
    ":exec "!go fmt '%'"
    :edit
    :redraw!
    normal zR
endfunction

" adjustment after command
" rustup component add rustfmt-preview
" next adjustment after update to stable 1.36
" mv /cygdrive/c/Users/Dell/.cargo/bin/rustfmt /cygdrive/c/Users/Dell/.cargo/bin/rustfmt_
function Rustfmt()
    " :silent exec "!rustfmt.exe --force --write-mode=overwrite '%'"
    :silent exec "!rustfmt.exe '%'"
    " :silent exec "!cargo.exe fmt '%'"
    :edit
    :redraw!
endfunction

function Cfmt()
    :silent exec "!astyle --suffix=none --style=java --pad-oper --add-brackets --add-one-line-brackets '%'"
    :edit
    :redraw!
endfunction

function Cppfmt()
    " :silent exec "!astyle --style=java '%'"
    " :silent exec "!astyle --suffix=none --style=java '%'"
    " :silent exec "!astyle --suffix=none --style=java --pad-oper --add-brackets --add-one-line-brackets '%'"
    " :silent exec "!astyle --suffix=none --style=ansi '%'"
    " :silent exec "!astyle --suffix=none --style=stroustrup '%'"
    " :edit
    " :redraw!
endfunction

function Tws()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction

"function! ProcessFileChangedShell()
"    if v:fcs_reason == 'mode' || v:fcs_reason == 'time'
"        let v:fcs_choice = ''
"    else
"        let v:fcs_choice = 'ask'
"    endif
"endfunction
"autocmd FileChangedShell call ProcessFileChangedShell()

"command! -nargs=* Xyz :call SomeFunc(<q-args>)

function F1(arg)
    :execute "j" a:arg
endfunction

function F2(arg)
    :exe +0,+a:arg s/^/#/g
endfunction

map <PageDown> :set scroll=0<CR>:set scroll^=2<CR>:set scroll-=1<CR><C-D>:set scroll=0<CR>
map <PageUp> :set scroll=0<CR>:set scroll^=2<CR>:set scroll-=1<CR><C-U>:set scroll=0<CR>

highlight Search ctermbg=lightgreen ctermfg=DarkRed term=underline,bold
highlight IncSearch ctermbg=lightgreen ctermfg=DarkRed term=underline

"highlight normal ctermbg=blue
"highlight CursorLine ctermbg=Blue ctermfg=Yellow

"highlight Cursor ctermbg=Yellow
"highlight CursorLine ctermbg=Yellow
"highlight CursorColumn ctermbg=Yellow

"highlight Cursor ctermbg=Green ctermfg=DarkRed
"highlight CursorLine ctermbg=green ctermfg=yellow
"highlight CursorLine ctermbg=LightBlue ctermfg=184
"highlight CursorLine ctermbg=Blue ctermfg=184
"highlight CursorLine ctermbg=75 ctermfg=Yellow
highlight CursorLine ctermbg=75 ctermfg=white
"highlight CursorColumn ctermbg=75 ctermfg=white
"highlight CursorLine ctermbg=blue ctermfg=184

"highlight CursorLine ctermbg=Blue
"highlight CursorLine ctermbg=LightBlue
"highlight CursorLine ctermbg=DarkBlue

""""" using python

function PyExample()
    pyfile ~/.vim.py
endfunction

function Date()
python << EOF
import sys, time
sys.stdout.write("%s\n" % time.ctime())
sys.stdout.flush()
EOF
endfunction
command Date  call Date()

function Sum()
python << EOF
import os, sys, time, vim
n = 0
for line in vim.current.buffer:
    try:
        n += int(line)
    except:
        pass
vim.current.buffer.append("total: %s\n" % n)
print(n)
EOF
endfunction

function Comment(n)
python << EOF
import vim
comment = "//"
if vim.current.buffer.name.endswith(".sh"):
    comment = "#"
row, col = vim.current.window.cursor
N = int(vim.eval("a:n"))
M = len(vim.current.buffer)-1
L = min(N,M)
for idx in range(L):
    if not vim.current.buffer[row-1+idx].startswith(comment):
        vim.current.buffer[row-1+idx] = "%s %s" % (comment, vim.current.buffer[row-1+idx] )
EOF
endfunction
nmap _c :call Comment(1)<enter>

function Uncomment(n)
python << EOF
import vim
comment = "//"
if vim.current.buffer.name.endswith(".sh"):
    comment = "#"
row, col = vim.current.window.cursor
N = int(vim.eval("a:n"))
M = len(vim.current.buffer)-1
L = min(N,M)
for idx in range(L):
    if vim.current.buffer[row-1+idx].startswith(comment):
        vim.current.buffer[row-1+idx] = vim.current.buffer[row-1+idx].lstrip("%s " % comment)
EOF
endfunction
nmap _C :call Uncomment(1)<enter>

function Range(n)
python << EOF
import vim
N = int(vim.eval("a:n"))
row, col = vim.current.window.cursor
current_line = vim.current.buffer[row-1]
new_line = current_line[:col] + (" {%s}" % ",".join(map(str,range(N)))) + current_line[col:]
vim.current.buffer[row-1] = new_line
EOF
endfunction

function Range_(from,to,step)
python << EOF
import vim
A = int(vim.eval("a:from"))
B = int(vim.eval("a:to"))
S = int(vim.eval("a:step"))
row, col = vim.current.window.cursor
current_line = vim.current.buffer[row-1]
new_line = current_line[:col] + (" {%s}" % ",".join(map(str,range(A,B,S)))) + current_line[col:]
vim.current.buffer[row-1] = new_line
EOF
endfunction

function Upper()
python << EOF
import vim
#S = int(vim.eval("a:step"))
row, col = vim.current.window.cursor
current_line = vim.current.buffer[row-1]
new_line = current_line.upper()
vim.current.buffer[row-1] = new_line
EOF
endfunction

function Lower()
python << EOF
import vim
#S = int(vim.eval("a:step"))
row, col = vim.current.window.cursor
current_line = vim.current.buffer[row-1]
new_line = current_line.lower()
vim.current.buffer[row-1] = new_line
EOF
endfunction

function Asm()
    " vimgrep "^[^;]*:" % | cw 10
    vimgrep "^[^;]*:" % | cw
endfunction

function ASM()
    match Search '^[^;]*:'
endfunction

nmap _a /^[^;]*:<CR>

"set virtualedit=all     " allows to move cursor in any space

" this option will change vim current working directory (pwd)
" when buffer is switched to a file located in another directory
" when using Ack use noautochdir or use full path as 3-rd parameter
" otherwise when 3-rd parameter is omitted the search will start in current directory
"set autochdir
set noautochdir

" execute the command
" ctags -R --language=c++
" at the top of the source tree
set tags=./tags,tags;

" create tags file
nmap _t : !ctags -R & <cr> redraw!
nmap _tt : !ctags -R --languages=

" search files recursive
set path+=**

" use za zA
set foldmethod=syntax
" open unfolded
set foldlevel=99
" open folded
"set foldlevel=0

nnoremap gf :vertical wincmd f<CR>

" nerdtree key mapping
nmap <space><space> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" tab key mapping // alt-up,down,left,right
silent! nmap <a-up> :tabnew<CR>
silent! nmap <a-down> :tabclose<CR>
silent! nmap <a-right> :tabnext<CR>
silent! nmap <a-left> :tabNext<CR>


" window key mapping // shift-up,down,left,right
nmap <c-up> :split<CR>
nmap <c-left> :close<CR>
nmap <c-down> :close<CR>
nmap <c-right> :vsplit<CR>

" open all buffers in tabs
nmap <f2> :tab sball<CR>
" change default tabpagemax, defaut is 10
set tabpagemax=100

" nmap <pos> :
" nmap <end> :
" see :help key-notion

" <tab> used as CNTL-i for jumplist
" nmap <tab> : TagbarToggle <cr>
nmap <tab>q : TagbarToggle <cr>
"nmap <pageup> : wincmd l <cr>
"nmap <pagedown> : wincmd h <cr>
nmap <s-up> : wincmd k <cr>
nmap <s-down> : wincmd j <cr>
nmap <s-left> : wincmd h <cr>
nmap <s-right> : wincmd l <cr>

"'i:imports:1'  does not show imports by default, only when cursor is at import line
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags.exe',
    \ 'ctagsargs' : '-sort -silent'
\ }

" snippets for golang
autocmd FileType go imap ;for for idx,val := range {}
autocmd FileType go imap ;func func myfunc() {}
autocmd FileType go imap ;imp import ""

set hidden

" Lusty
"let g:LustyJugglerShowKeys = 2
"let g:LustyExplorerSuppressRubyWarning = 1
"let g:LustyExplorerAlwaysShowDotFiles = 1
"nmap  f :LustyFilesystemExplorer
"nmap  b :LustyBufferExplorer
"nmap  r :LustyFilesystemExplorerFromHere
nmap  _g :LustyBufferGrep<cr>
"nmap  j :LustyJuggler
"nmap   :LustyJugglePrevious

nmap _f :CtrlP<cr>
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
" search only in vim current directory
let g:ctrlp_working_path_mode=''


" dont jump to the next matching word, stay on the current word
nnoremap <silent> * :let @/= '\<' . expand('<cword>') . '\>' <bar> set hls <cr>

" space show trailing whitespaces
nmap _ss :/\s\+$<enter>
" space delete trailing whitespaces
nmap _sd :%s/\s\+$//e<enter>

" normal mode jumps
" jump to line <n>G
" jump to begin/end of the sentence ()
" jump to next blank line up/down {}
" jump to begin/end of section [[]]
" jump to begin/end of block [{]}
" jump to L low, M middle, H high
" jump to matching delimiter %
" jump to tag :<tag>
" jump to older tag Ctrl-t
" jump to tag definiion C-]

set list
set listchars=tab:>-

" comment shortcuts
nmap cc gcc
nmap cx gcip
" tcomment uses commentstring which depends on filetype
autocmd BufNewFile,BufRead *.toml set filetype=toml
autocmd FileType toml set commentstring=#\ %s
autocmd FileType asm8051 set commentstring=;;\ %s
autocmd FileType masm set commentstring=;;\ %s

" jump between h and c
map <F5> :call CurtineIncSw()<CR>

nmap <F6> "xyiw
nmap <F7> :tag <C-R>x<CR>
" nmap <F8> "xyiw :tag <C-R>x<CR>
nmap <F8> "xyiw :tabnew <bar> :tag <C-R>x<CR>

" do not start ycm server at startup
let g:loaded_youcompleteme = 1
let g:LustyExplorerSuppressRubyWarning = 1

if &term =~ '256color'
  " disable Background Color Erase (BCE)
     set t_ut=
    set background=dark
endif

" using surround plugin
nmap qW ysW"
nmap qiW ysiW"
nmap qr ds"

" show full file path of the opened file
" note: pwd prints directory path of vim, which can be changed with cd inside vim
nnoremap _p :echo expand('%:p')<CR>

" "
" " Support for Tagbar -- https://github.com/majutsushi/tagbar
" "
" if !exists(':Tagbar') || rust#tags#IsUCtags()
"     finish
" endif

" vint: -ProhibitAbbreviationOption
let s:save_cpo = &cpo
set cpo&vim
" vint: +ProhibitAbbreviationOption

if !exists('g:tagbar_type_rust')
    let g:tagbar_type_rust = {
                \ 'ctagstype' : 'rust',
                \ 'kinds' : [
                \'T:types',
                \'f:functions',
                \'g:enumerations',
                \'s:structures',
                \'m:modules',
                \'c:constants',
                \'t:traits',
                \'i:trait implementations',
                \ ]
                \ }
endif

" In case you've updated/customized your ~/.ctags and prefer to use it.
if !get(g:, 'rust_use_custom_ctags_defs', 0)
    let g:tagbar_type_rust.deffile = expand('<sfile>:p:h:h:h') . '/ctags/rust.ctags'
endif

" vint: -ProhibitAbbreviationOption
let &cpo = s:save_cpo
unlet s:save_cpo
" vint: +ProhibitAbbreviationOption

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" :call TrimWhiteSpace()
" or create command
command! TrimWhitespace call TrimWhitespace()

fun Count()
    :%s///ng
endfun
command! Count call Count()
nmap _z :call Count()<CR>




