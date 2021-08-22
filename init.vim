" Basic Settings
set relativenumber
set ruler
set encoding=utf-8
set shiftwidth=4
set tabstop=4
syntax enable

" ------ Mapping ------
" Mapping fd to <ESC> in insert and visual mode
map <SPACE> <leader>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader><Enter> :noh <CR>
imap fd <ESC>
vmap fd <ESC>
xmap fd <ESC>
" Compile commands
noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < in<CR>
inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < in<CR>
" Switching Buffers
noremap <C-p> :b#<CR>
" Makeing enter as YCM selection
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_global_ycm_extra_conf"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:UltiSnipsExpandTrigger="<C-s>"
let g:hardtime_default_on = 1

" ------ Plugins ------
call plug#begin("~/.config/nvim/plugged")
	" gruvbox theme
	Plug 'morhetz/gruvbox'
	" base16 family theme (not very good)
	Plug 'chriskempson/base16-vim'	
	" YCM
	Plug 'ycm-core/YouCompleteMe'
	" auto pairs
	Plug 'jiangmiao/auto-pairs'
	" YCM Generator (not neccessary right now)
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
	" solarized theme (not good)
	Plug 'altercation/vim-colors-solarized'
	" comments
	Plug 'tpope/vim-commentary'
	" Vim-airline
	Plug 'vim-airline/vim-airline'
	" Ultisnip
	Plug 'SirVer/ultisnips'
	" Molokai theme (weird highlights for parantetheses)
	Plug 'tomasr/molokai'
	" Enhanced CPP Highlight
	Plug 'octol/vim-cpp-enhanced-highlight'
	" Dracula theme (not very good)
	Plug 'dracula/vim'
	" seoul 256 theme
	Plug 'junegunn/seoul256.vim'
	" Vim Hard Mode
	Plug 'takac/vim-hardtime'
call plug#end()

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark
colorscheme seoul256

