-- Copyright 2017 Nils Nordman
-- License: MIT (see LICENSE.md at the top-level directory of the distribution)

howl.util.lpeg_lexer ->

  lua = any {
    -- <%= some_val %>
    sequence {
      capture('operator', P'<%' * P'='^-1),
      sub_lex('lua', '%>'),
      capture('operator', '%>')
    },

    -- <?lua some_expr ?>
    sequence {
      capture('operator', P'<?' * (alpha + '@')^0),
      sub_lex('lua', '?>'),
      capture('operator', '?>')
    }
  }

  compose 'html', lua
