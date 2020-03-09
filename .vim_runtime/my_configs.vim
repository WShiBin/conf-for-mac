set hidden
set number
set nowritebackup
set cmdheight=2 " Better display for messages
set updatetime=300 " You will have bad experience for diagnostic messages when it's default 4000.
set shortmess+=c " don't give |ins-completion-menu| messages.
set signcolumn=yes " always show signcolumns
set background=light " colorscheme solarized
set cmdheight=2 " Better display for messages
set foldlevelstart=99

map <leader>c <C-W>c
map <C-c> :q<cr>

" let arrow key not work
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" All operations such as yy, D, and P work with the clipboard
" set clipboard=unnamed

" ctags
set tags+=/usr/include/tags
" fzf
set rtp+=/usr/local/opt/fzf

" Change Vim cursor in different modes : https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
" iTerm2 on OS
let &t_SI = "\<Esc>]50;CursorShape=1\x7"    " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7"    " Block in normal mode
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"

" tagbar
nmap <F8> :TagbarToggle<CR>
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" map <c-e> :NERDTreeToggle<cr>
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden = 1

" Use K to show documentation in preview window
" nnoremap <silent> K :call <SID>show_documentation()<CR>

" let g:ctrlp_custom_ignore = ''

" Eliminating delays on ESC in vim : https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000 ttimeoutlen=0

set ttymouse=sgr
set updatetime=500
set balloondelay=250
set signcolumn=yes

autocmd! BufEnter,BufNewFile *.go syntax on
autocmd! BufLeave *.go syntax off
set autoindent
set smartindent
filetype indent on
set backspace=2
" Suggestion: show info for completion candidates in a popup menu
if has("patch-8.1.1904")
    set completeopt+=popup
    set completepopup=align:menu,border:off,highlight:Pmenu
endif

nnoremap <C-W>M <C-W>\| <C-W>_
nnoremap <C-W>m <C-W>=
