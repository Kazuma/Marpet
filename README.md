# Marpet

Marpet is convert HTML into Markdown using the redcarpet.

## Installation

The Marpet source is available at GitHub:

```
$ git clone git://github.com/Kazuma/marpet.git
```

Or, [bundlizer](https://github.com/Tomohiro/bundlizer):

```
$ bundlier install Kazuma/Marpet
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
