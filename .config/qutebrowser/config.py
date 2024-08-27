config.load_autoconfig(False)
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
c.url.searchengines = {'DEFAULT': 'https://google.com/search?hl=en&q={}', '!a': 'https://www.amazon.com/s?k={}', '!d': 'https://duckduckgo.com/?ia=web&q={}', '!dd': 'https://thefreedictionary.com/{}', '!e': 'https://www.ebay.com/sch/i.html?_nkw={}', '!fb': 'https://www.facebook.com/s.php?q={}', '!gh': 'https://github.com/search?o=desc&q={}&s=stars', '!gist': 'https://gist.github.com/search?q={}', '!gi': 'https://www.google.com/search?tbm=isch&q={}&tbs=imgo:1', '!gn': 'https://news.google.com/search?q={}', '!ig': 'https://www.instagram.com/explore/tags/{}', '!m': 'https://www.google.com/maps/search/{}', '!p': 'https://pry.sh/{}', '!r': 'https://www.reddit.com/search?q={}', '!sd': 'https://slickdeals.net/newsearch.php?q={}&searcharea=deals&searchin=first', '!t': 'https://www.thesaurus.com/browse/{}', '!tw': 'https://twitter.com/search?q={}', '!w': 'https://en.wikipedia.org/wiki/{}', '!yelp': 'https://www.yelp.com/search?find_desc={}', '!yt': 'https://www.youtube.com/results?search_query={}'}
config.load_autoconfig()
c.url.searchengines = {
    'DEFAULT':  'https://google.com/search?hl=en&q={}',
    '!a':       'https://www.amazon.com/s?k={}',
    '!d':       'https://duckduckgo.com/?ia=web&q={}',
    '!dd':      'https://thefreedictionary.com/{}',
    '!e':       'https://www.ebay.com/sch/i.html?_nkw={}',
    '!fb':      'https://www.facebook.com/s.php?q={}',
    '!gh':      'https://github.com/search?o=desc&q={}&s=stars',
    '!gist':    'https://gist.github.com/search?q={}',
    '!gi':      'https://www.google.com/search?tbm=isch&q={}&tbs=imgo:1',
    '!gn':      'https://news.google.com/search?q={}',
    '!ig':      'https://www.instagram.com/explore/tags/{}',
    '!m':       'https://www.google.com/maps/search/{}',
    '!p':       'https://pry.sh/{}',
    '!r':       'https://www.reddit.com/search?q={}',
    '!sd':      'https://slickdeals.net/newsearch.php?q={}&searcharea=deals&searchin=first',
    '!t':       'https://www.thesaurus.com/browse/{}',
    '!tw':      'https://twitter.com/search?q={}',
    '!w':       'https://en.wikipedia.org/wiki/{}',
    '!yelp':    'https://www.yelp.com/search?find_desc={}',
    '!yt':      'https://www.youtube.com/results?search_query={}'
}

config.bind('M', 'hint links spawn mpv {hint-url}')
config.bind('Z', 'hint links spawn st -e youtube-dl {hint-url}')
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')
config.bind('S', 'session-load 42')

