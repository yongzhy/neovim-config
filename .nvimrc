set nocompatible
set backspace=2

" Basic VIM setting
source ~/.nvim/vimrcs/basic.vim

" vundle settings
source ~/.nvim/vimrcs/vundle.vim 

source ~/.nvim/vimrcs/special.vim
source ~/.nvim/vimrcs/keys.vim

" Don't show tab line
" I must put this setting at last to be effective
if version>=700
    set showtabline=0
endif
