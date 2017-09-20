-- Copyright 2017 Nils Nordman
-- License: MIT (see LICENSE.md at the top-level directory of the distribution)

{
  lexer: bundle_load('lsp_lexer')

  comment_syntax: { '<!--', '-->' }

  auto_pairs: {
    '(': ')'
    '[': ']'
    '{': '}'
    '"': '"'
    "'": "'"
    '<': '>'
  }
}
