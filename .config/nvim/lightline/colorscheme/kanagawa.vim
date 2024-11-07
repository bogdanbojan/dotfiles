" Kanagawa Wave Lightline Theme

" Base colors from kanagawa.nvim
let s:base = ['#1f1f28', 235]        " ui.bg
let s:surface = ['#2a2a37', 236]     " ui.bg_p1
let s:overlay = ['#363646', 237]     " ui.bg_p2
let s:muted = ['#727169', 242]       " ui.fg_dim
let s:subtle = ['#938aa9', 246]      " ui.fg

let s:fun = ['#7e9cd8', 110]         " syn.fun
let s:keyword = ['#957fb8', 139]     " syn.keyword
let s:operator = ['#c0a36e', 179]    " syn.operator
let s:constant = ['#d27e99', 174]    " syn.constant
let s:diag_ok = ['#76946a', 108]     " diag.ok

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal = {
      \ 'left': [[s:base, s:fun], [s:fun, s:surface]],
      \ 'right': [[s:overlay, s:subtle], [s:muted, s:overlay], [s:muted, s:surface]],
      \ 'middle': [[s:overlay, s:base]]
      \ }

let s:p.inactive = {
      \ 'right': [[s:base, s:surface], [s:overlay, s:base]],
      \ 'left': [[s:muted, s:base], [s:surface, s:base]],
      \ 'middle': [[s:surface, s:base]]
      \ }

let s:p.insert = {
      \ 'left': [[s:base, s:diag_ok], [s:diag_ok, s:surface]]
      \ }

let s:p.replace = {
      \ 'left': [[s:base, s:constant], [s:constant, s:surface]]
      \ }

let s:p.visual = {
      \ 'left': [[s:base, s:keyword], [s:keyword, s:surface]]
      \ }

let s:p.tabline = {
      \ 'left': [[s:subtle, s:base]],
      \ 'tabsel': [[s:fun, s:base]],
      \ 'middle': [[s:surface, s:base]],
      \ 'right': copy(s:p.normal.right)
      \ }

let s:p.normal.error = [[s:constant, s:base]]
let s:p.normal.warning = [[s:operator, s:surface]]

let g:lightline#colorscheme#kanagawa#palette = lightline#colorscheme#flatten(s:p)
