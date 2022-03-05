if not g.started_by_firenvim then
  return
end

opt.number = false
opt.ruler = false
opt.showmode = false
opt.showcmd = false
opt.laststatus = 0
opt.showtabline = 0
opt.colorcolumn = ''

g.firenvim_config = {
  localSettings = {
    [ '.*' ] = {
      takeover = 'never',
    },
  },
}
