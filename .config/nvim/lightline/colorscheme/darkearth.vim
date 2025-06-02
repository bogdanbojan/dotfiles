" Custom Lightline Theme
" Base colors from your palette
let s:base = ['#24211E', 234]        " bg (color00)
let s:surface = ['#484441', 235]     " darker tan (color01)
let s:overlay = ['#5F865F', 236]     " teal (color02)
let s:muted = ['#77824A', 242]       " green (color03)
let s:subtle = ['#B3664D', 245]      " red (color04)
let s:orange = ['#B36B42', 173]      " main orange (color05) - normal
let s:green = ['#5F865F', 142]       " teal (color02) - insert
let s:purple = ['#BB7844', 175]      " light orange (color06) - visual
let s:blue = ['#77824A', 109]        " green (color03)
let s:red = ['#B3664D', 167]         " red (color04)
let s:yellow = ['#C9A654', 173]      " yellow (color07)
let s:fg = ['#D7C484', 223]          " fg (color08)

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal = {
      \ 'left': [[s:base, s:orange], [s:fg, s:surface]],
      \ 'right': [[s:base, s:fg], [s:muted, s:surface], [s:fg, s:base]],
      \ 'middle': [[s:fg, s:base]]
      \ }

let s:p.inactive = {
      \ 'right': [[s:surface, s:base], [s:muted, s:base]],
      \ 'left': [[s:surface, s:base], [s:muted, s:base]],
      \ 'middle': [[s:surface, s:base]]
      \ }

let s:p.insert = {
      \ 'left': [[s:base, s:green], [s:fg, s:surface]]
      \ }

let s:p.replace = {
      \ 'left': [[s:base, s:red], [s:fg, s:surface]]
      \ }

let s:p.visual = {
      \ 'left': [[s:base, s:yellow], [s:fg, s:surface]]
      \ }

let s:p.tabline = {
      \ 'left': [[s:fg, s:base]],
      \ 'tabsel': [[s:base, s:yellow]],
      \ 'middle': [[s:surface, s:base]],
      \ 'right': copy(s:p.normal.right)
      \ }

let s:p.normal.error = [[s:red, s:base]]
let s:p.normal.warning = [[s:yellow, s:base]]

let g:lightline#colorscheme#darkearth#palette = lightline#colorscheme#flatten(s:p)
