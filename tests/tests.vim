
let s:help1 =
    \ [
    \    "<c-n>       next file",
    \    "<c-p>       previous file"]

let s:help2 =
    \ [
    \    "test yes",
    \    "test nO"]

call quickhelp#register("vim", s:help1)
call quickhelp#register("txt", s:help2)

call quickhelp#open()

let &ft="txt"
call quickhelp#open("txt")
