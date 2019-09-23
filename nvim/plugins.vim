call plug#begin()
" Autoformater
Plug 'Chiel92/vim-autoformat'
" minimal config (https://github.com/tpope/vim-sensible/blob/master/README.markdown
Plug 'tpope/vim-sensible'
" File commander
Plug 'scrooloose/nerdtree'
" Syntax checking
Plug 'vim-syntastic/syntastic'
" vim git plugin
Plug 'tpope/vim-fugitive'
" vim surround plugin
Plug 'tpope/vim-surround'
" ctrl-p
Plug 'ctrlpvim/ctrlp.vim'
" vim themes
Plug 'altercation/vim-colors-solarized'
" show git status (add,delete,change) per line
Plug 'airblade/vim-gitgutter'
" vim-snippets
Plug 'onkelpit/vim-snippets'
" snipMate
Plug 'garbas/vim-snipmate'
" git undo tree for neovim
Plug 'simnalamburt/vim-mundo'
" undo tree
Plug 'mbbill/undotree'
" vim latex plugin
Plug 'lervag/vimtex'
" easymotion TODO
Plug 'easymotion/vim-easymotion'
" vim-airline
Plug 'vim-airline/vim-airline'
" vim-commentary
Plug 'tpope/vim-commentary'
" nvim split-term
Plug 'vimlab/split-term.vim'
" powerline-fonts
Plug 'lokaltog/powerline-fonts'
" ranger.vim
Plug 'francoiscabrol/ranger.vim'
" vim-tshark
Plug 'bps/vim-tshark'
" WindowSwap.vim
Plug 'wesQ3/vim-windowswap'
" Conque-GDB
"Plug 'vim-scripts/Conque-GDB'
" vim-misc
Plug 'xolox/vim-misc'
" vim-notes
Plug 'xolox/vim-notes'
" vim-startify
Plug 'mhinz/vim-startify'
" terryma/vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'
" rafi/vim-unite-issue
Plug 'rafi/vim-unite-issue'
" autozimu/LanguageClient-neovim
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'
" 'brooth/far.vim'
Plug 'brooth/far.vim'
" 'craigemery/vim-autotag'
Plug 'craigemery/vim-autotag'
" 'Valloric/YouCompleteMe'
Plug 'Valloric/YouCompleteMe'
" 'mikelue/vim-maven-plugin'
Plug 'mikelue/vim-maven-plugin'
"" 'severing-lemaignan/vim-minimap.git'
"Plug 'severing-lemaignan/vim-minimap.git'
" 'MarcWeber/vim-addon-mw-utils'
Plug 'MarcWeber/vim-addon-mw-utils'
" 'tomtom/tlib_vim'
Plug 'tomtom/tlib_vim'
" 'severin-lemaignan/vim-minimap'
Plug 'severin-lemaignan/vim-minimap'
" 'dhruvasagar/vim-table-mode'
Plug 'dhruvasagar/vim-table-mode'
" 'vivien/vim-linux-coding-style'
" Plug 'vivien/vim-linux-coding-style'
call plug#end()
