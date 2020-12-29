

let g:quickhelp_show_clippy = v:true
let g:quickhelp_display = "floating"
let s:help1 = [
    \ "##vimdiff commands",
    \ "",
    \ "]c          - next difference",
    \ "[c          - previous difference",
    \ "do          - diff obtain",
    \ "dp          - diff put",
    \ "zo          - open folded text",
    \ "zc          - close folded text",
    \ ":diffupdate - re-scan the files for differences",
    \ ":diffthis   - activate diff for file" ]


let s:help2 =
    \ [
    \    "test yes",
    \    "test nO"]

call quickhelp#register("vim", s:help1)
call quickhelp#register("txt", s:help2)

call quickhelp#open()

let &ft="txt"
call quickhelp#open("txt")
