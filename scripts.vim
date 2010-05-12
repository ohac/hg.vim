" see /usr/share/vim/vimcurrent/scripts.vim

let s:line1 = getline(1)
if s:line1 =~ "^#!"
else
  " Hg output
  if s:line1 =~ '^changeset:  *\d\d*:\x\{12\}$' || getline(3) =~ '^changeset:  *\d\d*:\x\{12\}$'
    set ft=hg
  endif
endif
unlet s:line1
