filetype plugin indent on 	" Use this to allow intelligent auto-indenting
syntax on			" Active la coloration syntaxique

set encoding=utf-8  " Encoding
set wildmenu	    " Better command-line completion
set smartindent     " Indentation intelligente
set autoindent      " Conserve l'indentation sur une nouvelle ligne
set ruler           " Affiche la position du curseur
set number	    " Affiche les numéros de ligne
set mouse=a	    " Active la souris
set confirm	    " Raise a dialogue asking if you wish to save changed files
set hlsearch        " Highlight all search
set incsearch       " Highlight current search
set splitright      " Vsplit on right
set cursorline      " Cursor line highlight

" Theme
set background=dark         " Utiliser des couleurs correctes sur un fond noir
colorscheme Tomorrow-Night  " Theme

" Color on column 81
set colorcolumn=81
highlight ColorColumn guibg=#2d2d2d ctermbg=237


" Recherche sensible à la casse
set ignorecase
set smartcase

" Indentation settings for using 4 spaces instead of tabs.
set shiftwidth=4
set softtabstop=4
set expandtab

" Aucun son ou affichage lors des erreur
set errorbells
set novisualbell
set t_vb=

" Overide background theme
highlight Normal ctermbg=none  

" Overide Current Line Color
highlight CursorLine guibg=#2d2d2d ctermbg=237

" Overide Current line number Color
highlight CursorLineNr cterm=bold ctermfg=203 gui=bold guifg=#b3525b

" === PLUGINS ===

" -- Light line --

set laststatus=2    " Displat bar"
set noshowmode      " Delete --INSERT--

" Right colors
if !has('gui_running')
    set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
