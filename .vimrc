" no vi compat
 set nocompatible

" filetype func off
 filetype off

" initialize vundle
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" start- all plugins below
 Plugin 'VundleVim/Vundle.vim'

" stop - all plugins above
 call vundle#end()

" filetype func on
 filetype plugin indent on

" install gruvbox 
 Plugin 'morhetz/gruvbox'

" set color
 set t_Co=256
 colorscheme gruvbox
 set background=dark
 set colorcolumn=80

"Lean & mean status/tabline for vim that's light as air.
" Plugin 'bling/vim-airline'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" a nice status line for vim
" Plugin 'itchyny/lightline.vim'

" a directory browser for vim
 Plugin 'scrooloose/nerdtree.git'

"vim-template plugin
 Plugin 'aperezdc/vim-template'

" Customize the settings for vim-template plugin
 let g:email = "dariush@najjarza.de"
 let g:user = "Dariush Najjarzade"
 let g:license = "copyleft (ɔ)"

" NERDTree shortcut
 map <C-n> :NERDTreeToggle<CR>

"yntastic is a syntax checking plugin for Vim
 Plugin 'scrooloose/syntastic'

" Syntastic statusline
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*
" Sytnastic settings
 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_loc_list_height=5
 let g:syntastic_check_on_wq = 0
" Better symbols
 let g:syntastic_error_symbol = 'XX'
 let g:syntastic_warning_symbol = '!!'

" python Code Compleatation
 Plugin 'davidhalter/jedi-vim'

"fugitive.vim may very well be the best Git wrapper of all time
 Plugin 'tpope/vim-fugitive'

"YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for
"Vim.
 Plugin 'valloric/youcompleteme'

" Whitespace highlighting
 Bundle 'ntpeters/vim-better-whitespace'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Tab settings
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 set formatoptions=tcrqn         " autowrap and comments (see :h 'fo-table)
 set autoindent                  " keep indent on next line and make BS work with indenting
 set wrap                        " wrap lines that exceed screen
 set smarttab                    " Make Tab work fine with spaces
 set showmatch                   " show matching brackets
 set matchtime=5                 " tenths of a second to blink matching brackets
 set hlsearch                    " highlight search phrase matches (reset with :noh)
 set incsearch                   " do highlight as you type you search phrase
 set list                        " show tabs, trailings spaces, ...
 set listchars=tab:\|\ ,trail:.,extends:>,precedes:<

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File settings
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 set encoding=utf-8              " Let Vim use utf-8 internally
 set fileencoding=utf-8          " Default for new files
 set termencoding=utf-8          " Terminal encoding
 set fileformats=unix,dos,mac    " support all three, in this order
 set fileformat=unix             " default file format

 filetype plugin on              " load filetype plugins
 filetype indent on " load indent settings


" lightline fix
 set laststatus=2
 let g:airline_powerline_fonts = 1
 let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif

      "unicode symbols
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

      " airline symbols
      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr = ''


" toggle line numbers both in normal and insert mode
 set number
 noremap <F3> :set invnumber<CR>
 inoremap <F3> <C-O>:set invnumber<CR>
