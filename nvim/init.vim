source ~/.config/nvim/plugins.vim

if has("gui_running")
    set guifont Hack:h8
endif

" relative numbers with absolute number on current line
set nu
set rnu

filetype plugin on
filetype indent on


" auto read when change from outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast close
nmap <leader>d :bd<cr>

" Fast list
nmap <leader>l :ls<cr>

" Fast next ycm error
nmap <leader>m :lnext<cr>

" Fast prev ycm error
nmap <leader>n :lprevious<cr>

" Fast spell check toggle
nmap <leader>r :set spell!<cr>

" replace in visual selection with CTRL-R
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left><Paste>

syntax enable
set background=dark
colorscheme desert

" No Backup most stuff is in VCS
set nobackup
set nowb
set noswapfile

" command bar height
set cmdheight=2

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

if has('mouse')
    set mouse=a
endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

set ffs=unix,dos,mac
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=100

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.config/nvim/undo

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

"" Run Neomake on each FileWrite
"autocmd! BufWritePost * Neomake

nnoremap <F5> :MundoToggle<CR>
nnoremap <F6> :GundoToggle<CR>

"" Use deoplete.
"let g:deoplete#enable_at_startup = 1
"
"" settings for deoplete-clang
"let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
"let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"

" to quickly edit vimconfig
map <leader>e :e ~/.config/nvim/init.vim<cr>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-y>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" Disable Arrow keys in Escape mode

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" Disable Arrow keys in Insert mode

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let g:syntastic_c_compiler = 'gcc'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Wann geladen wird              # Maske   # Aktivieren      # Zu verwendende Sprache
au BufNewFile,BufRead,BufEnter   *.wiki    setlocal spell    spelllang=de_de,en_us
au BufNewFile,BufRead,BufEnter   *.md      setlocal spell    spelllang=de_de,en_us
au BufNewFile,BufRead,BufEnter   *.tex     setlocal spell    spelllang=de_de,en_us
au BufNewFile,BufRead,BufEnter   *.txt     setlocal spell    spelllang=de_de,en_us
au BufNewFile,BufRead,BufEnter   README    setlocal spell    spelllang=de_de,en_us

" RemoveTrailingWhitespaces on save
au BufWrite *   RemoveTrailingSpaces


" highlight long lines
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,120),",")


" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" map double ESC to nohl
nnoremap <silent> <Esc><Esc> :nohl<CR>

set foldmethod=indent
set foldnestmax=10
set foldlevelstart=10

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" " airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''

let g:vimtex_compiler_progname = 'nvr'

"let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
"let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Peter Johennecken"
"let g:DoxygenToolkit_licenseTag="My own license"

let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_always_populate_location_list = 1

command Todo noautocmd vimgrep /TODO\|FIXME|XXX/j src/* include/* src_cgi/* | cw

set nocompatible

set path+=**
set wildmenu

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_listsytle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

nnoremap ,main :-1read $HOME/.config/nvim/snippets/main1.c<CR>/{<CR>a<CR>
nnoremap ,if :-1read $HOME/.config/nvim/snippets/if.c<CR>f(a
nnoremap ,else :-1read $HOME/.config/nvim/snippets/else.c<CR>f(a
nnoremap ,elif :-1read $HOME/.config/nvim/snippets/elif.c<CR>f(a

" vnoremap : y:<C-r>"<C-b>
" F11 and F12 to go to previous/next entry
nnoremap <F11>          :silent! cc<CR>:silent! cp <CR>
nnoremap <F12>          :silent! cc<CR>:silent! cn <CR>

" Shifted: go to previous/next file in entries list
nnoremap <S-F11>        :silent! cc<CR>:silent! cpf<CR>
nnoremap <S-F12>        :silent! cc<CR>:silent! cnf<CR>

" Ctrl-F11/F12 : jump through quickfix lists history
nnoremap <C-F11>        :silent! col <CR>
nnoremap <C-F12>        :silent! cnew<CR>
