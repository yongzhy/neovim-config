set nocompatible
set backspace=2

" Basic VIM setting
source ~/.vim/vimrcs/basic.vim

" vundle settings
source ~/.vim/vimrcs/vundle.vim 

source ~/.vim/vimrcs/special.vim
source ~/.vim/vimrcs/keys.vim

" Don't show tab line
" I must put this setting at last to be effective
if version>=700
    set showtabline=0
endif
