" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if &compatible
  set nocompatible
endif
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#load_toml('~/.config/nvim/dein.toml',{'lazy':0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml',{'lazy':1})


  call dein#add('lervag/vimtex')
  call dein#add('cespare/vim-toml')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')


  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
colorscheme molokai
"let g:deoplete#enable_at_startup = 1

"syntax on
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set autochdir

set number
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

nnoremap j gj
nnoremap k gk

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
:set guicursor=
set clipboard+=unnamedplus


inoremap <silent> jj <ESC>
nnoremap <silent> <C-d> :Denite -auto_preview -mode=normal file_rec<CR>
nnoremap <silent> <C-e> :NERDTreeToggle<CR>
nnoremap <silent> <space>c :TComment<cr>

" neosnippetの設定
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

set tags=.ctags;
augroup ctags
    autocmd!
    autocmd BufWritePost *.c,*.cpp,*.tex silent !ctags -R -f .ctags
augroup END


"vimtexの設定.hook_addで書いてもうまくいかなかったので
let g:vimtex_quickfix_open_on_warning=0
let g:neosnippet#snippets_directory='~/.cache/dein/repos/github.com/Shougo/neosnippet-snippets/neosnippets/,~/.config/nvim/snippets/'


