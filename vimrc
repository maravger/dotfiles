filetype on
syntax on
set number
set ruler
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set showmatch
set mat=2
set belloff=all
set hid

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

call plug#begin()
Plug 'scrooloose/nerdtree'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
