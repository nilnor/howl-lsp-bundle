mode_reg =
  name: 'lsp'
  extensions: { 'lp', 'lsp' }
  create: -> bundle_load('lsp_mode')

howl.mode.register mode_reg

unload = -> howl.mode.unregister 'lsp'

return {
  info:
    author: 'Copyright 2017 Nils Nordman',
    description: 'Lua Server Pages support',
    license: 'MIT',
  :unload
}
