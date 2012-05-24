call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on

set autoindent

set background=dark
syntax enable

let mapleader = ","
set wildmenu
set wildmode=list:longest

set ignorecase 
set smartcase

set title
set scrolloff=3

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

set ruler
set hlsearch
set incsearch

map <leader>v :e! ~/.vim/vimrc<cr>
nmap <leader>w :w!<cr>

set nobackup
set nowb
set noswapfile

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction

function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

noremap <leader>p :set paste<CR>
noremap <leader>T :!tj3 %<CR>:!open Overview.html<CR>

" con ficheros grandes el cursorline hace que vaya mas lento
"set cursorline

let g:solarized_termtrans=1
let g:solarized_termcolors=256

" set number
colorscheme solarized

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  autocmd bufwritepost vimrc source $MYVIMRC
endif

nnoremap <F7> :GundoToggle<CR>

:nmap <C-t> :tabnew<CR>
:nmap <C-p> :tabprevious<cr>
:nmap <C-n> :tabnext<cr>

:map <C-m> :NERDTreeToggle<CR>
:map <C-c> :NERDTreeClose<CR>

:map <C-d> :GitDiff<CR>
:map <C-x> :GitStatus<CR>
:map <C-i> :GitCommit<CR>
:map <C-l> :GitLog<CR>

"set backspace=2
set backspace=eol,start,indent

"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType jade set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complet

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"map <F1> :python debugger_resize()<cr>
"map <F2> :Dbg into<cr>
"map <F3> :Dbg over<cr>
"map <F4> :Dbg out<cr>
"map <F5> :Dbg run<cr>
"map <F6> :Dbg here<cr>)
"
"nnoremap ,e :Dbg eval<cr>A
"nnoremap ,w :Dbg watch<cr>A
"nnoremap E :python debugger_watch_input("exec")<cr>A


augroup filetypedetect
	au BufNewFile,BufRead *.tjp,*.tji               setf tjp
augroup END

