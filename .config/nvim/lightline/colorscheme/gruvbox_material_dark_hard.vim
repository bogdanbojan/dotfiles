" Gruvbox Material Dark Hard Lightline Theme

" Base colors from gruvbox-material
let s:base = ['#1d2021', 234]        " bg0
let s:surface = ['#282828', 235]     " bg1
let s:overlay = ['#32302f', 236]     " bg2
let s:muted = ['#665c54', 242]       " grey0
let s:subtle = ['#928374', 245]      " grey1

let s:orange = ['#e78a4e', 173]      " orange (normal)
let s:green = ['#a9b665', 142]       " green (insert)
let s:purple = ['#d3869b', 175]      " purple (visual)
let s:blue = ['#7daea3', 109]        " aqua
let s:red = ['#ea6962', 167]         " red

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal = {
      \ 'left': [[s:base, s:orange], [s:orange, s:surface]],
      \ 'right': [[s:overlay, s:subtle], [s:muted, s:overlay], [s:muted, s:surface]],
      \ 'middle': [[s:overlay, s:base]]
      \ }

let s:p.inactive = {
      \ 'right': [[s:base, s:surface], [s:overlay, s:base]],
      \ 'left': [[s:muted, s:base], [s:surface, s:base]],
      \ 'middle': [[s:surface, s:base]]
      \ }

let s:p.insert = {
      \ 'left': [[s:base, s:green], [s:green, s:surface]]
      \ }

let s:p.replace = {
      \ 'left': [[s:base, s:red], [s:red, s:surface]]
      \ }

let s:p.visual = {
      \ 'left': [[s:base, s:purple], [s:purple, s:surface]]
      \ }

let s:p.tabline = {
      \ 'left': [[s:subtle, s:base]],
      \ 'tabsel': [[s:orange, s:base]],
      \ 'middle': [[s:surface, s:base]],
      \ 'right': copy(s:p.normal.right)
      \ }

let s:p.normal.error = [[s:red, s:base]]
let s:p.normal.warning = [[s:orange, s:surface]]

let g:lightline#colorscheme#gruvbox_material_dark_hard#palette = lightline#colorscheme#flatten(s:p)
