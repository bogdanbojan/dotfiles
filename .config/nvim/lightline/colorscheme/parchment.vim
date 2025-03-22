" Save this to ~/.vim/autoload/lightline/colorscheme/parchment.vim
" or ~/.config/nvim/autoload/lightline/colorscheme/parchment.vim

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" Color definitions
let s:black = ['#000000', 0]
let s:dark_red = ['#880000', 1]
let s:dark_green = ['#005500', 2]
let s:dark_yellow = ['#663311', 3]
let s:dark_blue = ['#004488', 4]
let s:dark_magenta = ['#770077', 5]
let s:dark_cyan = ['#007777', 6]
let s:light_gray = ['#eeeecc', 7]
let s:gray = ['#eaeaea', 8]
let s:light_red = ['#ffeaea', 9]
let s:light_green = ['#eaffea', 10]
let s:light_yellow = ['#cccc44', 11]
let s:light_blue = ['#cceeff', 12]
let s:light_magenta = ['#ffeaff', 13]
let s:light_cyan = ['#eaffff', 14]
let s:cream = ['#ffffea', 15]

" Normal mode
let s:p.normal.left = [[s:cream, s:dark_blue, 'bold'], [s:black, s:light_blue]]
let s:p.normal.middle = [[s:black, s:light_gray]]
let s:p.normal.right = [[s:cream, s:dark_blue], [s:black, s:light_blue]]
let s:p.normal.error = [[s:cream, s:dark_red]]
let s:p.normal.warning = [[s:cream, s:dark_yellow]]

" Insert mode
let s:p.insert.left = [[s:cream, s:dark_green, 'bold'], [s:black, s:light_green]]
let s:p.insert.right = [[s:cream, s:dark_green], [s:black, s:light_green]]

" Replace mode
let s:p.replace.left = [[s:cream, s:dark_red, 'bold'], [s:black, s:light_red]]
let s:p.replace.right = [[s:cream, s:dark_red], [s:black, s:light_red]]

" Visual mode
let s:p.visual.left = [[s:cream, s:dark_magenta, 'bold'], [s:black, s:light_magenta]]
let s:p.visual.right = [[s:cream, s:dark_magenta], [s:black, s:light_magenta]]

" Inactive windows
let s:p.inactive.left = [[s:black, s:light_gray], [s:black, s:light_gray]]
let s:p.inactive.middle = [[s:black, s:light_gray]]
let s:p.inactive.right = [[s:black, s:light_gray], [s:black, s:light_gray]]

" Tab line
let s:p.tabline.left = [[s:black, s:light_gray]]
let s:p.tabline.middle = [[s:black, s:cream]]
let s:p.tabline.right = [[s:black, s:light_gray]]
let s:p.tabline.tabsel = [[s:cream, s:dark_blue]]

let g:lightline#colorscheme#parchment#palette = lightline#colorscheme#flatten(s:p)
