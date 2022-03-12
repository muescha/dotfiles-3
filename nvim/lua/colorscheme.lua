vim.opt.background = 'dark'
vim.cmd('colorscheme ' .. NvimConfig.colorscheme)

if NvimConfig.colorscheme == 'aylin' then
  -- Errors
  vim.highlight.create(
    'LspDiagnosticsVirtualTextError',
    { guifg = 'Red', ctermfg = 'Red', gui = 'bold' },
    false
  )
  vim.highlight.create(
    'DiagnosticVirtualTextError',
    { guifg = 'Red', ctermfg = 'Red', gui = 'bold' },
    false
  )

  -- Warnings
  vim.highlight.create(
    'LspDiagnosticsVirtualTextWarning',
    { guifg = 'Yellow', ctermfg = 'Yellow' },
    false
  )
  vim.highlight.create(
    'DiagnosticVirtualTextWarn',
    { guifg = 'Yellow', ctermfg = 'Yellow' },
    false
  )

  -- Info & Hints
  vim.highlight.create(
    'DiagnosticVirtualTextInfo',
    { guifg = 'White', ctermfg = 'White' },
    false
  )
  vim.highlight.create(
    'DiagnosticVirtualTextHint',
    { guifg = 'White', ctermfg = 'White' },
    false
  )

  -- Cursor line
  vim.highlight.create(
    'CursorLineNR',
    { guifg = 'Yellow', ctermfg = 'Yellow', guibg = 'None', cterm = 'bold' },
    false
  )

  -- Comment in italics
  vim.highlight.create('Comment', { gui = 'italic', cterm = 'italic' }, false)

  -- Change color of floating popup border
  vim.highlight.link('FloatBorder', NvimConfig.ui.float.highlight, true)

  -- Illuminate
  vim.highlight.link('LspReferenceText', 'CursorLine', true)
  vim.highlight.link('LspReferenceWrite', 'CursorLine', true)
  vim.highlight.link('LspReferenceRead', 'CursorLine', true)
end
