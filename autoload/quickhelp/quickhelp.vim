" File: autoload/quickhelp.vim
" Author: brenopacheco
" Description: 
" Last Modified: 

let clippy = 
            \ [ " ╭──╮   ",
            \   " │  │   ",
            \   " @  @  ╭",
            \   " ││ ││ │",
            \   " ││ ││ ╯",
            \   " │╰─╯│  ",
            \   " ╰───╯  ",
            \   "        " ]



let s:map = {}

""
" @public
" Register quickhelp for filetype. the "help" argument is a string to be 
" displayed when calling quickhelp#open().
fun! quickhelp#register(filetype, help)
    if type(a:help) != 3
        echoerr "Help argument must be a list of strings."
        return
    endif
    let s:map[a:filetype] = a:help
endf

""
" @public
" Opens quickhelp for given [optional] filetype.
" If no filetype is given, opens current filetype's quickhelp.
" @default filetype=&ft
fun! quickhelp#open(...)
    if a:0 > 0 
        let ft = a:1
    else
        let ft = &ft
    endif
    if has_key(s:map, ft)
        if g:quickhelp_show_clippy
            echo join(s:merge(s:clippy, s:map[&ft]), "\n")
        else
            echo join(s:map[ft], "\n")
        endif
    else
        echoerr "Filetype has no quickhelp set."
    endif
endf

""
" @private
" Merges two string lists respecting str length. i.e:
" l1 = ["hello"]
" l2 = [" world", "wow"]
" [ "hello world", "     wow" ]
fun! s:merge(list1, list2)
    return map(
            \ range(
                \ max( [ len(list1), len(list2) ])),
            \ '(v:key >= len(list1) ? repeat(" ", strwidth(list1[0])) : list1[v:key]) 
            \ . (v:key >= len(list2) ? repeat(" ", strwidth(list2[0])) : list2[v:key]) ')
endf
