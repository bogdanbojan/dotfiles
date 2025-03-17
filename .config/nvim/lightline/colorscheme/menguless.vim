" =============================================================================
" Filename: autoload/lightline/colorscheme/menguless.vim
" Author: Your Name
" License: MIT License
" Last Change: 2025/03/17
" =============================================================================

let s:black = ['#053230', 0]
let s:gray = ['#2d555a', 6]
let s:white = ['#f8efd8', 15]
let s:blue = ['#3b80a1', 12]
let s:green = ['#51a163', 10]
let s:purple = ['#76929b', 8]
let s:red = ['#d33934', 9]
let s:yellow = ['#969c46', 11]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [[s:black, s:blue], [s:blue, s:gray]]
let s:p.normal.right = [[s:black, s:blue], [s:blue, s:gray]]
let s:p.normal.middle = [[s:white, s:gray]]

let s:p.inactive.left = [[s:black, s:purple], [s:purple, s:gray]]
let s:p.inactive.right = [[s:black, s:purple], [s:purple, s:gray]]
let s:p.inactive.middle = [[s:white, s:gray]]

let s:p.insert.left = [[s:black, s:green], [s:green, s:gray]]
let s:p.insert.right = [[s:black, s:green], [s:green, s:gray]]

let s:p.replace.left = [[s:black, s:red], [s:red, s:gray]]
let s:p.replace.right = [[s:black, s:red], [s:red, s:gray]]

let s:p.visual.left = [[s:black, s:yellow], [s:yellow, s:gray]]
let s:p.visual.right = [[s:black, s:yellow], [s:yellow, s:gray]]

let s:p.tabline.left = [[s:blue, s:gray]]
let s:p.tabline.tabsel = [[s:black, s:blue]]
let s:p.tabline.middle = [[s:blue, s:gray]]
let s:p.tabline.right = [[s:black, s:blue]]

let s:p.normal.error = [[s:red, s:black]]
let s:p.normal.warning = [[s:yellow, s:black]]

let g:lightline#colorscheme#menguless#palette = lightline#colorscheme#flatten(s:p)

