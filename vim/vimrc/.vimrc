set nohlsearch "no search highlights
set splitright "vsplit opens new file on right
set splitbelow "spilt opens new file below
"The below map does not work...maybe something to do with plugins loaded
"after? I tried putting this command at the bottom but no luck. It _does_ work
"however when manually putting it in vim
map <F7>:w<bar>!(clang++-5.0 -std=c++17 % -o %:r.bin && ./%:r.bin)<CR>
let loaded_matchparen=1
inoremap jk <ESC>
"map <C-L>:nohl<CR><C-L>
"set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showcmd
set wildmenu
set noshowmatch
set hlsearch
syntax on
"set background=dark
"set t_Co=256
"let g:desert_termcolors=256
set nonumber
set linebreak
"Some addition based on the vim help example vimrc file
if has("vms")
    set nobackup
else
    set backup
endif

"This tells Vim to keep a backup copy of a file when overwriting it (but not
"on the VMS system...I need to find out what this is!
set backupdir=N:\\backups\\vim\\backup,.
"set dir=N:\\backups\\vim\\swap\\,.

set history=50
set autoindent

"close the quickfix window
"ccl
"ClangComplete
filetype plugin on
filetype plugin indent on
let g:clang_exec='/usr/bin/clang++-5.0'
let g:clang_library_path='/usr/lib/llvm-5.0/'
"let g:clang_use_library = 1
let g:clang_complete_auto = 1
let g:clang_user_options='|| exit 0'
"let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++17'
let g:clang_hl_errors = 0
let g:clang_complete_copen = 0
set pumheight=15
set completeopt =menu,menuone,longest

"Gui(gvim) options)
if has ("gui_running")
    
    try
        colorscheme OceanicNext
    catch /^Vim\%((\a\+)\)\=:E185/
        colorscheme desert
    endtry
    
    set guioptions-=m "menu bar
    set guioptions-=T "toolbar
    set guioptions-=r "scrollbar
    "set guifont=Monospace\ 10
    set guifont=Lucida_Console:h8
    set columns=180
    set lines=70
endif

""Typescript syntax plugin
au BufRead, BufNewFile *.ts
setfiletype typescript
