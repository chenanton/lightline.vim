" =============================================================================
" Filename: autoload/lightline/colorscheme/one.vim
" Author: Zoltan Dalmadi
" License: MIT License
" Last Change: 2019/09/09 22:42:48.
" =============================================================================

" Common colors
let s:blue   = [ '#61afef', 75 ]
let s:green  = [ '#98c379', 76 ]
let s:purple = [ '#c678dd', 176 ]
let s:red1   = [ '#e06c75', 168 ]
let s:red2   = [ '#be5046', 168 ]
let s:yellow = [ '#e5c07b', 180 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if lightline#colorscheme#background() ==# 'light'
  " Light variant
  let s:fg    = [ '#494b53', 238 ]
  let s:bg    = [ '#fafafa', 255 ]
  let s:gray1 = [ '#494b53', 238 ]
  let s:gray2 = [ '#f0f0f0', 255 ]
  let s:gray3 = [ '#d0d0d0', 250 ]
  let s:green = [ '#98c379', 35 ]

  let s:p.inactive.left   = [ [ s:bg,  s:gray3 ], [ s:bg, s:gray3 ] ]
  let s:p.inactive.middle = [ [ s:gray3, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:bg, s:gray3 ] ]
else
  " Dark variant
  let s:fg    = [ '#abb2bf', 145 ]
  let s:bg    = [ '#282c34', 235 ]
  let s:gray1 = [ '#5c6370', 241 ]
  let s:gray2 = [ '#2c323c', 235 ]
  let s:gray3 = [ '#242A34', 240 ]
  let s:gray4 = [ '#282E38', 240 ]
  let s:gray5 = [ '#242A34', 240 ]
  let s:gray6 = [ '#202630', 240 ]

  let s:p.inactive.left   = [ [ s:gray1,  s:bg ], [ s:gray1, s:bg ] ]
  let s:p.inactive.middle = [ [ s:gray1, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:gray1, s:bg ] ]
endif

" Common
let s:p.normal.left    = [ [ s:fg, s:gray6], [ s:fg, s:gray3 ] ]
let s:p.normal.middle  = [ [ s:fg, s:gray4 ] ]
let s:p.normal.right   = [ [ s:fg, s:gray6], [ s:fg, s:gray3 ] ]
let s:p.normal.error   = [ [ s:red2, s:bg ] ]
let s:p.normal.warning = [ [ s:gray6, s:bg ] ]
let s:p.insert.right   = [ [ s:fg, s:gray6], [ s:fg, s:gray3 ] ]
let s:p.insert.left    = [ [ s:fg, s:gray6], [ s:fg, s:gray3 ] ]
let s:p.replace.right  = [ [ s:fg, s:gray6], [ s:fg, s:gray3 ] ]
let s:p.replace.left   = [ [ s:fg, s:gray6], [ s:fg, s:gray3 ] ]
let s:p.visual.right   = [ [ s:fg, s:gray6], [ s:fg, s:gray3 ] ]
let s:p.visual.left    = [ [ s:fg, s:gray6], [ s:fg, s:gray3 ] ]
let s:p.tabline.left   = [ [ s:fg, s:gray4 ] ]
let s:p.tabline.tabsel = [ [ s:fg, s:gray5, 'bold'] ]
let s:p.tabline.middle = [ [ s:gray3, s:gray4 ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let g:lightline#colorscheme#one#palette = lightline#colorscheme#flatten(s:p)
