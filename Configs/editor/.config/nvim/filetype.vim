augroup filetypedetect
  " Git commit message
  autocmd Filetype gitcommit                         setlocal spell tw=72 colorcolumn=73
  " nftables
  " autocmd BufRead,BufNewFile *.nft setfiletype nftables
  " Shorter columns in text
  autocmd Filetype tex setlocal spell tw=80 colorcolumn=81
  autocmd Filetype text setlocal spell tw=72 colorcolumn=73
  autocmd Filetype markdown setlocal spell tw=72 colorcolumn=73
  " No autocomplete in text
  autocmd Filetype tex let b:coc_enabled = 0
  autocmd Filetype text let b:coc_enabled = 0
  autocmd Filetype markdown let b:coc_enabled = 0
augroup END
