" -----------------------------------------------------------------------------
" File: kamrat.vim
" Description: Red and blue color scheme for Vim
" Author: Dawid Zych <dawid.zych@yandex.com>
" License: The MIT License (MIT)
" Source: https://github.com/silenc3r/kamrat
" Based On: https://github.com/morhetz/gruvbox
" Last Modified: 16 Mar 2018
" -----------------------------------------------------------------------------

let g:airline#themes#kamrat#palette = {}

function! airline#themes#kamrat#refresh()

  let M0 = airline#themes#get_highlight('Identifier')
  let accents_group = airline#themes#get_highlight('Pmenu')
  let modified_group = [M0[0], '', M0[2], '', '']
  let warning_group = airline#themes#get_highlight2(['Normal', 'bg'], ['ALEWarningSign', 'fg'])
  let error_group = airline#themes#get_highlight2(['Normal', 'bg'], ['ALEErrorSign', 'fg'])

  let s:N1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Folded', 'fg'])
  let s:N2 = airline#themes#get_highlight2(['Normal', 'fg'], ['StatusLine', 'fg'])
  let s:N3 = airline#themes#get_highlight2(['Normal', 'fg'], ['Visual', 'bg'])
  let g:airline#themes#kamrat#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#kamrat#palette.normal_modified = { 'airline_c': modified_group }
  let g:airline#themes#kamrat#palette.normal.airline_warning = warning_group
  let g:airline#themes#kamrat#palette.normal_modified.airline_warning = warning_group
  let g:airline#themes#kamrat#palette.normal.airline_error = error_group
  let g:airline#themes#kamrat#palette.normal_modified.airline_error = error_group

  let s:I1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Identifier', 'fg'])
  let s:I2 = s:N2
  let s:I3 = s:N3
  let g:airline#themes#kamrat#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#kamrat#palette.insert_modified = g:airline#themes#kamrat#palette.normal_modified
  let g:airline#themes#kamrat#palette.insert.airline_warning = g:airline#themes#kamrat#palette.normal.airline_warning
  let g:airline#themes#kamrat#palette.insert_modified.airline_warning = g:airline#themes#kamrat#palette.normal_modified.airline_warning
  let g:airline#themes#kamrat#palette.insert.airline_error = g:airline#themes#kamrat#palette.normal.airline_error
  let g:airline#themes#kamrat#palette.insert_modified.airline_error = g:airline#themes#kamrat#palette.normal_modified.airline_error

  let s:R1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Error', 'fg'])
  let s:R2 = s:I2
  let s:R3 = s:I3
  let g:airline#themes#kamrat#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#kamrat#palette.replace_modified = g:airline#themes#kamrat#palette.normal_modified
  let g:airline#themes#kamrat#palette.replace.airline_warning = g:airline#themes#kamrat#palette.normal.airline_warning
  let g:airline#themes#kamrat#palette.replace_modified.airline_warning = g:airline#themes#kamrat#palette.normal_modified.airline_warning
  let g:airline#themes#kamrat#palette.replace.airline_error = g:airline#themes#kamrat#palette.normal.airline_error
  let g:airline#themes#kamrat#palette.replace_modified.airline_error = g:airline#themes#kamrat#palette.normal_modified.airline_error

  let s:V1 = airline#themes#get_highlight2(['Normal', 'bg'], ['SpecialChar', 'fg'])
  let s:V2 = s:N2
  let s:V3 = s:N3
  let g:airline#themes#kamrat#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#kamrat#palette.visual_modified = { 'airline_c': [ s:V3[0], '', s:V3[2], '', '' ] }
  let g:airline#themes#kamrat#palette.visual.airline_warning = g:airline#themes#kamrat#palette.normal.airline_warning
  let g:airline#themes#kamrat#palette.visual_modified.airline_warning = g:airline#themes#kamrat#palette.normal_modified.airline_warning
  let g:airline#themes#kamrat#palette.visual.airline_error = g:airline#themes#kamrat#palette.normal.airline_error
  let g:airline#themes#kamrat#palette.visual_modified.airline_error = g:airline#themes#kamrat#palette.normal_modified.airline_error

  let s:IA = airline#themes#get_highlight2(['StatusLineNC', 'bg'], ['StatusLineNC', 'fg'])
  let g:airline#themes#kamrat#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#kamrat#palette.inactive_modified = { 'airline_c': modified_group }

  let g:airline#themes#kamrat#palette.accents = { 'red': accents_group }

  let s:TD = airline#themes#get_highlight2(['Folded', 'fg'], ['Visual', 'bg'])
  let s:TF = airline#themes#get_highlight2(['Normal', 'bg'], ['Normal', 'bg'])
  let s:TS = airline#themes#get_highlight2(['StatusLine', 'bg'], ['StatusLine', 'fg'])
  let g:airline#themes#kamrat#palette.tabline = {
    \ 'airline_tab':     s:TD,
    \ 'airline_tabsel':  s:TS,
    \ 'airline_tabtype': s:V1,
    \ 'airline_tabfill': s:TF,
    \ 'airline_tabhid':  s:IA,
    \ 'airline_tabmod':  s:I1
    \ }

endfunction

call airline#themes#kamrat#refresh()

" vim: set sw=4 ts=4 sts=4 et tw=80 ft=vim fdm=marker:
