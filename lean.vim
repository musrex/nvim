" Neovim configuration file
" Author: Leandro Lopez
" Last Modified: 9/17/23

" Enable line numbers
set number

" Enable relative line numbers
set relativenumber

" Highlight search results
set hlsearch

" Show line and column number in the status line
set ruler

" Enable relative line numbers for Netrw
augroup MyNetrwSettings
  autocmd!
  autocmd FileType netrw set number relativenumber
augroup END

