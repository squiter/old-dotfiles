call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set encoding=utf-8
set mouse=a
set nu
set ignorecase
set smartcase           "ignore case if search pattern is all in lowercase
set undolevels=1000

"highlight all the matches in search
set hlsearch

"Colorscheme
set background=dark
set t_Co=256
colorscheme jellybeans

if has("gui_macvim")
  colorscheme railscasts
endif

syntax on

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"Indent Settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
filetype plugin indent on

"autoload on startup indentation guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 2
if has("gui_macvim")
  let g:indent_guides_auto_colors = 1
else
  let g:indent_guides_auto_colors = 0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgray ctermbg=236
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgray ctermbg=237
endif

"CtrlP - Substituto do cmd+t
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Vim-Powerline
"I must to patched myself my own font
set laststatus=2
let g:Powerline_symbols = 'fancy'
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

"SnipMate
let g:snips_author = 'Brunno dos Santos'
"MAPS
"key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

map <F5> :NERDTree<CR>
map <F4> :set hlsearch!<CR>

"This mapping make a closed tag with a new line with tab indent
inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O<Tab>

" Tab mappings.
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" TODO List
noremap <Leader>td :noautocmd vimgrep /TODO/j **/*.*<CR>:cw<CR>

" Print current path
cmap <C-e> <C-r>=expand('%:p:h')<CR>/

" Highlight Whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
map <leader>ctw :%s/\s\+$//<CR>

" Select a text in Visual Mode and type <C+R> them text the substitution and
" type enter
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>


" RSpec-Vim maps
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

" Adding configuration to use Ag.vim
" let g:agprg="<custom-ag-path-goes-here> --column"
