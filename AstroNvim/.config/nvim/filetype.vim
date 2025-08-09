if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.hyprland setfiletype hyprlang
  au! BufRead,BufNewFile *.hypr setfiletype hyprlang
augroup END
