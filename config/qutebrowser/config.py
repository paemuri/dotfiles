config.load_autoconfig()
config.bind('>', 'tab-next')
config.bind('<', 'tab-prev')
config.bind('<Ctrl+.>', 'tab-move +')
config.bind('<Ctrl+,>', 'tab-move -')
config.bind('<Ctrl-m>', 'spawn mpv {url}')
config.bind('<Ctrl-M>', 'hint links spawn mpv {hint-url}')
config.bind('<Ctrl-o>', 'set-cmd-text -s :open -p')

c.auto_save.session = True
c.colors.webpage.preferred_color_scheme = 'dark'
c.content.autoplay = False
c.content.pdfjs = True
c.downloads.location.prompt = False
c.scrolling.bar = 'always'
c.scrolling.smooth = True
c.tabs.close_mouse_button = 'none'
c.tabs.close_mouse_button_on_bar = 'ignore'
c.tabs.favicons.show = 'never'

