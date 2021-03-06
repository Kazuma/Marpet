# Marpet

Marpet is convert HTML into Markdown using the redcarpet.

[![Code Climate](https://codeclimate.com/github/Kazuma/Marpet.png)](https://codeclimate.com/github/Kazuma/Marpet)
[![Dependency Status](https://gemnasium.com/Kazuma/Marpet.png)](https://gemnasium.com/Kazuma/Marpet)
[![endorse](http://api.coderwall.com/kazuma/endorsecount.png)](http://coderwall.com/kazuma)

## Installation

The Marpet source is available at GitHub:

```
$ git clone git://github.com/Kazuma/marpet.git
```

Or, [bundlizer](https://github.com/Tomohiro/bundlizer):

```
$ bundlizer install Kazuma/Marpet
```

## Usage

```
$ marpet input.md                # stdout
$ marpet input.md > output.html  # write output into HTML
```

configre the settings for [vim-quickrun](https://github.com/thinca/vim-quickrun). (.vimrc)

```
let g:quickrun_config['markdown'] = { 'command': 'marpet', 'outputter': 'browser', 'exec': ['%c %s'], }
```

## LICENSE

© 2012 Kazuma, Muramatsu. This project is licensed under the MIT license. See LICENSE for details.
