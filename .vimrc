"==========================================
"Garder le menu en anglais
"==========================================
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"==========================================
"Set font and number
"==========================================
set guifont=Consolas:h14
set number

"==========================================
"Wrap text
"==========================================
:set wrap
:set linebreak
:set nolist  " list disables linebreak

"==========================================
" Split to the right and down
"==========================================
set splitright
set splitbelow

"==========================================
"Avoid the blue @ when whole line doe not fit
"==========================================
set display+=lastline

"==========================================
" Stop the bells and error bells
"==========================================
set visualbell
set noerrorbells

"==========================================
" Save and reload Folds automatcally
"==========================================
augroup AutoSaveFolds
  autocmd!
  " view files are about 500 bytes
  " bufleave but not bufwinleave captures closing 2nd tab
  " nested is needed by bufwrite* (if triggered via other autocmd)
  "Source:https://vi.stackexchange.com/questions/13864/bufwinleave-mkview-with-unnamed-file-error-32
  autocmd BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview!
  autocmd BufWinEnter ?* silent! loadview
augroup end
