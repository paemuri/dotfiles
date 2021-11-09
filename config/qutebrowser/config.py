config.load_autoconfig()
config.bind('>', 'tab-next')
config.bind('<', 'tab-prev')
config.bind('<Ctrl+.>', 'tab-move +')
config.bind('<Ctrl+,>', 'tab-move -')
config.bind('<Ctrl-m>', 'spawn mpv {url}')
config.bind('<Ctrl-M>', 'hint links spawn mpv {hint-url}')
config.bind('<Ctrl-o>', 'set-cmd-text -s :open -p')

c.auto_save.session = True

c.changelog_after_upgrade = 'patch'

c.colors.completion.category.bg = '#282828'
c.colors.completion.category.border.bottom = '#282828'
c.colors.completion.category.border.top = '#282828'
c.colors.completion.category.fg = '#fdf4c1'
c.colors.completion.even.bg = '#282828'
c.colors.completion.fg = '#fdf4c1'
c.colors.completion.item.selected.bg = '#fdf4c1'
c.colors.completion.item.selected.border.bottom = '#282828'
c.colors.completion.item.selected.border.top = '#282828'
c.colors.completion.item.selected.fg = '#282828'
c.colors.completion.item.selected.match.fg = '#af4a03'
c.colors.completion.match.fg = '#af4a03'
c.colors.completion.odd.bg = '#282828'
c.colors.completion.scrollbar.bg = '#282828'
c.colors.completion.scrollbar.fg = '#fdf4c1'

c.colors.downloads.bar.bg = '#282828'
c.colors.downloads.error.bg = '#9d0006'
c.colors.downloads.error.fg = '#fdf4c1'
c.colors.downloads.start.bg = '#076678'
c.colors.downloads.start.fg = '#fdf4c1'
c.colors.downloads.stop.bg = '#79740e'
c.colors.downloads.stop.fg = '#fdf4c1'

c.colors.keyhint.bg = '#ee282828'
c.colors.keyhint.fg = '#fdf4c1'
c.colors.keyhint.suffix.fg = '#af4a03'

c.colors.statusbar.command.bg = '#282828'
c.colors.statusbar.command.fg = '#fdf4c1'
c.colors.statusbar.command.private.bg = '#282828'
c.colors.statusbar.command.private.fg = '#fdf4c1'
c.colors.statusbar.insert.bg = '#79740e'
c.colors.statusbar.insert.fg = '#fdf4c1'
c.colors.statusbar.normal.bg = '#282828'
c.colors.statusbar.normal.fg = '#fdf4c1'
c.colors.statusbar.passthrough.bg = '#8f3f71'
c.colors.statusbar.passthrough.fg = '#fdf4c1'
c.colors.statusbar.private.bg = '#282828'
c.colors.statusbar.private.fg = '#fdf4c1'
c.colors.statusbar.progress.bg = '#282828'
c.colors.statusbar.url.error.fg = '#fb4933'
c.colors.statusbar.url.fg = '#fdf4c1'
c.colors.statusbar.url.hover.fg = '#83a598'
c.colors.statusbar.url.success.http.fg = '#fabd2f'
c.colors.statusbar.url.success.https.fg = '#b8bb26'
c.colors.statusbar.url.warn.fg = '#fe8019'

c.colors.tabs.bar.bg = '#282828'
c.colors.tabs.even.bg = '#282828'
c.colors.tabs.even.fg = '#fdf4c1'
c.colors.tabs.indicator.error = '#9d0006'
c.colors.tabs.indicator.start = '#076678'
c.colors.tabs.indicator.stop = '#79740e'
c.colors.tabs.odd.bg = '#282828'
c.colors.tabs.odd.fg = '#fdf4c1'
c.colors.tabs.selected.even.bg = '#504945'
c.colors.tabs.selected.even.fg = '#fdf4c1'
c.colors.tabs.selected.odd.bg = '#504945'
c.colors.tabs.selected.odd.fg = '#fdf4c1'

c.colors.webpage.darkmode.enabled = False
c.colors.webpage.preferred_color_scheme = 'dark'

c.completion.cmd_history_max_items = -1
c.completion.web_history.max_items = -1

c.content.autoplay = False
c.content.blocking.enabled = True
c.content.cookies.accept = 'no-3rdparty'
c.content.geolocation = False
c.content.headers.accept_language = 'en-US,en;q=0.9, pt-BR,pt;q=0.8'
c.content.javascript.can_access_clipboard = True
c.content.pdfjs = False

c.downloads.location.prompt = False
c.downloads.position = 'bottom'

c.fonts.default_family = 'Fira Mono'

c.scrolling.bar = 'always'
c.scrolling.smooth = True

c.tabs.close_mouse_button = 'none'
c.tabs.close_mouse_button_on_bar = 'ignore'
c.tabs.favicons.show = 'never'
c.tabs.mousewheel_switching = False
c.tabs.indicator.padding = {
  'bottom': 3,
  'left': 3,
  'right': 3,
  'top': 3
}
c.tabs.padding = {
  'bottom': 0,
  'left': 0,
  'right': 0,
  'top': 0
}
c.tabs.show = 'multiple'
c.tabs.title.format = '{audio}{current_title}'
