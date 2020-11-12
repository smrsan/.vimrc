set nocompatible
set number
filetype plugin on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-eunuch'
" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'Quramy/tsuquyomi'

" Lang Highlighters
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Themes
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'

" DevIcons
Plug 'preservim/nerdtree' |
  \ Plug 'Xuyuanp/nerdtree-git-plugin' |
  \ Plug 'ryanoasis/vim-devicons'
call plug#end()


set laststatus=2
set encoding=UTF-8


" Themes
if (has("termguicolors"))
  set termguicolors
endif
syntax on
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
set background=dark
let g:one_allow_italics = 1

"let g:airline_theme='simple'
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1

let g:indentLine_setColors = 1
"let g:indentLine_char = '|'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 232
let g:indentLine_color_gui = '#080808'
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

let g:tsuquyomi_completion_detail = 1

" Make background transparent (default term preference)
"hi Normal guibg=NONE ctermbg=NONE


" vim javascript
let g:javascript_plugin_flow = 1

:set tabstop=2
:set shiftwidth=2
:set expandtab
