"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/pit/.config/nvim/dein.vim//repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/home/pit/.config/nvim/dein.vim/'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('scrooloose/nerdtree')
call dein#add('neomake/neomake')
call dein#add('tpope/vim-fugitive')
call dein#add('itchyny/lightline.vim')
call dein#add('altercation/vim-colors-solarized')
call dein#add('majutsushi/tagbar')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('Chiel92/vim-autoformat')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('simnalamburt/vim-mundo')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('tpope/vim-surround')
call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-clang')
call dein#add('junegunn/fzf')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('dhruvasagar/vim-table-mode')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('yuratomo/gmail.vim')
"
" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

