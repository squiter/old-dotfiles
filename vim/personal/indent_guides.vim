" VIM PLUGIN CONFIG
" INDENT GUIDE LINES

"autoload on startup indentation guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
if has("gui_macvim")
  let g:indent_guides_auto_colors = 1
  let g:indent_guides_guide_size = 2
else
  "solarized
  let g:indent_guides_guide_size = 1
  let g:indent_guides_auto_colors = 1
  "jellybeans collors
  "let g:indent_guides_auto_colors = 0
  "autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgray ctermbg=236
  "autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgray ctermbg=237
endif
