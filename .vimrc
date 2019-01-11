let mapleader = "\<space>"

noremap! <C-?> <C-h>
colorscheme slate
set number
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

"set expandtab       " Expand TABs to spaces
set mouse=a
set relativenumber

set list
set listchars=tab:>·,trail:~,extends:>,precedes:<

imap jk <Esc>
map <Leader>r :%s//gc<Left><Left><Left>
vmap <Leader>r :s//gc<Left><Left><Left>

map j gj
map k gk

nmap <Leader>q ::q<cr>
