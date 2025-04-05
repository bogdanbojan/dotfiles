" DO NOT EDIT
" This file is generated using both the 'index.js' script and the 'ayu.extended.vim' file
" Generated on 'Wed Oct 04 2023 22:51:18 GMT-0400 (Eastern Daylight Saving Time)'

let g:ayu#palette = {}
let g:ayu#palette['syntax_tag']                    = {'light': '#55b4d4', 'mirage': '#5ccfe6', 'dark': '#39bae6'}
let g:ayu#palette['syntax_func']                   = {'light': '#f2ae49', 'mirage': '#ffd173', 'dark': '#ffb454'}
let g:ayu#palette['syntax_entity']                 = {'light': '#399ee6', 'mirage': '#73d0ff', 'dark': '#59c2ff'}
let g:ayu#palette['syntax_string']                 = {'light': '#86b300', 'mirage': '#d5ff80', 'dark': '#aad94c'}
let g:ayu#palette['syntax_regexp']                 = {'light': '#4cbf99', 'mirage': '#95e6cb', 'dark': '#95e6cb'}
let g:ayu#palette['syntax_markup']                 = {'light': '#f07171', 'mirage': '#f28779', 'dark': '#f07178'}
let g:ayu#palette['syntax_keyword']                = {'light': '#fa8d3e', 'mirage': '#ffad66', 'dark': '#ff8f40'}
let g:ayu#palette['syntax_special']                = {'light': '#e6ba7e', 'mirage': '#ffdfb3', 'dark': '#e6b673'}
let g:ayu#palette['syntax_comment']                = {'light': '#adafb2', 'mirage': '#6e7c8e', 'dark': '#646b73'}
let g:ayu#palette['syntax_constant']               = {'light': '#a37acc', 'mirage': '#dfbfff', 'dark': '#d2a6ff'}
let g:ayu#palette['syntax_operator']               = {'light': '#ed9366', 'mirage': '#f29e74', 'dark': '#f29668'}
let g:ayu#palette['vcs_added']                     = {'light': '#6cbf43', 'mirage': '#87d96c', 'dark': '#7fd962'}
let g:ayu#palette['vcs_modified']                  = {'light': '#478acc', 'mirage': '#80bfff', 'dark': '#73b8ff'}
let g:ayu#palette['vcs_removed']                   = {'light': '#ff7383', 'mirage': '#f27983', 'dark': '#f26d78'}
let g:ayu#palette['editor_fg']                     = {'light': '#5c6166', 'mirage': '#cccac2', 'dark': '#bfbdb6'}
let g:ayu#palette['editor_bg']                     = {'light': '#fcfcfc', 'mirage': '#242936', 'dark': '#0d1017'}
let g:ayu#palette['editor_line']                   = {'light': '#f1f1f2', 'mirage': '#1a1f29', 'dark': '#131721'}
let g:ayu#palette['editor_selection_active']       = {'light': '#d7e4f6', 'mirage': '#2b4768', 'dark': '#1c3b5d'}
let g:ayu#palette['editor_selection_inactive']     = {'light': '#ebf1f9', 'mirage': '#283850', 'dark': '#142335'}
let g:ayu#palette['editor_findMatch_active']       = {'light': '#ecdcfd', 'mirage': '#695380', 'dark': '#6c5980'}
let g:ayu#palette['editor_findMatch_inactive']     = {'light': '#b266fe', 'mirage': '#403a54', 'dark': '#332d41'}
let g:ayu#palette['editor_gutter_active']          = {'light': '#a1a6ad', 'mirage': '#767c85', 'dark': '#626976'}
let g:ayu#palette['editor_gutter_normal']          = {'light': '#ced1d4', 'mirage': '#4d535e', 'dark': '#464b56'}
let g:ayu#palette['editor_indentGuide_active']     = {'light': '#d4d7d9', 'mirage': '#484d59', 'dark': '#3d424c'}
let g:ayu#palette['editor_indentGuide_normal']     = {'light': '#e7e9ea', 'mirage': '#363c48', 'dark': '#20242c'}
let g:ayu#palette['ui_fg']                         = {'light': '#8a9199', 'mirage': '#707a8c', 'dark': '#565b66'}
let g:ayu#palette['ui_bg']                         = {'light': '#f8f9fa', 'mirage': '#1f2430', 'dark': '#0b0e14'}
let g:ayu#palette['ui_line']                       = {'light': '#e7eaed', 'mirage': '#171b24', 'dark': '#11151c'}
let g:ayu#palette['ui_selection_active']           = {'light': '#e5e9ed', 'mirage': '#293040', 'dark': '#1a1f29'}
let g:ayu#palette['ui_selection_normal']           = {'light': '#e7eaed', 'mirage': '#282e3b', 'dark': '#171c24'}
let g:ayu#palette['ui_panel_bg']                   = {'light': '#f3f4f5', 'mirage': '#1c212b', 'dark': '#0f131a'}
let g:ayu#palette['ui_panel_shadow']               = {'light': '#d3d4d4', 'mirage': '#161a22', 'dark': '#06070a'}
let g:ayu#palette['common_accent']                 = {'light': '#ffaa33', 'mirage': '#ffcc66', 'dark': '#e6b450'}
let g:ayu#palette['common_error']                  = {'light': '#e65050', 'mirage': '#ff6666', 'dark': '#d95757'}

let g:ayu#palette['extended_fg_idle']          = {'light': '#828C99', 'mirage': '#607080', 'dark': '#3E4B59'}
let g:ayu#palette['extended_warning']          = {'light': '#FA8D3E', 'mirage': '#FFA759', 'dark': '#FF8F40'}
let g:ayu#palette['extended_float_bg']         = {'light': '#D8D8D8', 'mirage': '#2D323F', 'dark': '#161e26'}

let g:ayu#palette['extended_delimiter_1'] = {'light': '#F0D5AF', 'mirage': '#FFF9EC', 'dark': '#F0D2A8'}
let g:ayu#palette['extended_delimiter_2'] = {'light': '#E6BA7E', 'mirage': '#FFE6B3', 'dark': '#E6B673'}
let g:ayu#palette['extended_delimiter_3'] = {'light': '#B89565', 'mirage': '#FFCA5A', 'dark': '#B8915C'}
let g:ayu#palette['extended_delimiter_4'] = {'light': '#8A704C', 'mirage': '#FFAE00', 'dark': '#8A7D45'}

let s:extended_palette = get(g:, 'ayu_extended_palette', 0)

if s:extended_palette
    let g:ayu#palette['extended_keyword_func'] = {'light': '#3EABFA', 'mirage': '#80AAFF', 'dark': '#40B0FF'}
    let g:ayu#palette['extended_repeat']       = {'light': '#FA3E4D', 'mirage': '#FF595E', 'dark': '#FF4051'}
    let g:ayu#palette['extended_conditional']  = {'light': '#F9700C', 'mirage': '#FF8214', 'dark': '#FF710D'}
    let g:ayu#palette['extended_import']       = {'light': '#FF7E0D', 'mirage': '#FFBB33', 'dark': '#E0A123'}
    let g:ayu#palette['extended_parameter']    = {'light': '#252729', 'mirage': '#DDEEE8', 'dark': '#ebeae6'}

    let g:ayu#palette['extended_enum']      = {'light': '#729BFF', 'mirage': '#91B6FF', 'dark': '#8CB1FF'}
    let g:ayu#palette['extended_interface'] = {'light': '#5FCFCF', 'mirage': '#70E6D2', 'dark': '#85EAEE'}
    let g:ayu#palette['extended_struct']    = {'light': '#71B9ED', 'mirage': '#9DDEFF', 'dark': '#8BD4FF'}
    let g:ayu#palette['extended_generic']   = {'light': '#998CC3', 'mirage': '#AABBEE', 'dark': '#8F8FFF'}
    let g:ayu#palette['extended_namespace'] = {'light': '#F2976F', 'mirage': '#FFA375', 'dark': '#FFB179'}
else
    let g:ayu#palette['extended_keyword_func'] = g:ayu#palette['syntax_keyword']
    let g:ayu#palette['extended_repeat']       = g:ayu#palette['syntax_keyword']
    let g:ayu#palette['extended_conditional']  = g:ayu#palette['syntax_keyword']
    let g:ayu#palette['extended_import']       = g:ayu#palette['common_accent']
    let g:ayu#palette['extended_parameter']    = g:ayu#palette['syntax_special']

    let g:ayu#palette['extended_enum']      = g:ayu#palette['syntax_entity']
    let g:ayu#palette['extended_interface'] = g:ayu#palette['syntax_entity']
    let g:ayu#palette['extended_struct']    = g:ayu#palette['syntax_entity']
    let g:ayu#palette['extended_generic']   = g:ayu#palette['syntax_entity']
    let g:ayu#palette['extended_namespace'] = g:ayu#palette['common_accent']
endif

function! ayu#get_style()
    return &background ==# 'dark' ? get(g:, 'ayucolor', 'dark') : &background
endfunction

function! ayu#get_color(color_name)
    return g:ayu#palette[a:color_name][ayu#get_style()]
endfunction

function! ayu#hi(group_name, fg_color_name, bg_color_name, ...)
    let l:fg_color = a:fg_color_name !=# '' ? ayu#get_color(a:fg_color_name) : 'NONE'
    let l:bg_color = a:bg_color_name !=# '' ? ayu#get_color(a:bg_color_name) : 'NONE'

    let l:fmt_arg = get(a:, '1')
    let l:fmt = l:fmt_arg !=# '0' && l:fmt_arg !=# '' ? l:fmt_arg : 'NONE'

    execute join(['hi!', a:group_name, 'guifg=' . l:fg_color, 'guibg=' . l:bg_color, 'gui=' . l:fmt, 'cterm=' . l:fmt], ' ')
endfunction

let s:style = ayu#get_style()

let s:fg = {}
let s:fg.light = ayu#get_color('editor_fg')
let s:fg.dark = ayu#get_color('ui_fg')
let s:fg.warning = ayu#get_color('extended_warning')
let s:fg.error = ayu#get_color('common_error')

let s:bg = {}
let s:bg.light = ayu#get_color('ui_panel_bg')
let s:bg.dark = ayu#get_color('ui_panel_shadow')
let s:bg.contrast = ayu#get_color('common_accent')
let s:bg.normal = ayu#get_color('syntax_entity')
let s:bg.insert = ayu#get_color('syntax_string')
let s:bg.replace = ayu#get_color('vcs_removed')
let s:bg.visual = ayu#get_color('syntax_constant')
let s:bg.command = ayu#get_color('syntax_func')

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'command': {}, 'tabline': {}}

let s:p.normal.left     = [[s:bg.light, s:bg.normal], [s:fg.light, s:bg.dark]]
let s:p.normal.right    = [[s:fg.light, s:bg.dark], [s:fg.light, s:bg.dark]]
let s:p.normal.middle   = [[s:fg.dark, s:bg.light]]
let s:p.normal.error    = [[s:fg.error, s:bg.dark, 'bold']]
let s:p.normal.warning  = [[s:fg.warning, s:bg.dark, 'bold']]

let s:p.inactive.left   = [[s:fg.light, s:bg.dark]]
let s:p.inactive.right  = [[s:fg.light, s:bg.dark]]
let s:p.inactive.middle = [[s:fg.light, s:bg.light]]

let s:p.insert.left     = [[s:bg.light, s:bg.insert], [s:fg.light, s:bg.dark]]

let s:p.replace.left    = [[s:bg.light, s:bg.replace], [s:fg.light, s:bg.dark]]

let s:p.visual.left     = [[s:bg.light, s:bg.visual], [s:fg.light, s:bg.dark]]

let s:p.command.left     = [[s:bg.light, s:bg.command, 'bold'], [s:fg.light, s:bg.dark]]

let s:p.tabline.left    = [[s:fg.dark, s:bg.light]]
let s:p.tabline.tabsel  = [[s:fg.light, s:bg.dark]]

let g:lightline#colorscheme#ayu#palette = lightline#colorscheme#fill(s:p)
