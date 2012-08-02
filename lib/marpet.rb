require "marpet/version"
require 'redcarpet/compat'

module Marpet
  class Converter
    def initialize(path)
      @markdown = Redcarpet::Markdown.new(
        Redcarpet::Render::HTML,
        :tables => true,
        :autolink => true,
        :superscript => true,
        :strikethrough => true,
        :fenced_code_blocks => true,
      )
      @path = path
    end

    def render
      content = @markdown.render(open(@path).read)
      "<!DOCTYPE html>
<head>
  <meta charset='utf-8'>
  <style>
    body {
      background-color: #FFF;
      font-size: 14px;
      font-family: Verdana,Helvetica,arial,osaka;
      font-weight: nomal;
      font-color: #333;
      font-size-adjust: 0.5;
      line-height: 1.6;
    }

    h1 {
      font-size: 33px;
      font-weight: bold;
      border-bottom: solid 1px #CCC;
    }

    h2 {
      font-size: 24px;
      font-weight: bold;
      border-bottom: solid 1px #CCC;
    }

    h3 {
      font-size: 18px;
      font-weight: bold;
    }

    pre {
      font-size: 13px;
      background-color: #F8F8F8;
      line-height: 19px;
      margin: 1em;
      padding: 6px 10px;
      border: solid 1px #CCC;
      border-radius: 3px;
    }

    blockquote {
      padding: 0 15px;
      border-left: solid 4px #DDD;
      color: #777;
    }

    ul ol {
      padding-left: 30px
    }

    p img
      padding:
        left: 2em

    table {
      border: solid 1px #090909;
      border-collapse: collapse;
      border-spacing: 0;
      font-size: 1.2em;
      margin-left: 1em;
      color: #FFFFFF;
    }

    table th {
      padding: 3px;
      border: solid 1px #444444;
      background: #666666;
    }

    table td {
      padding: 5px;
      border: solid 1px #D9D9D9;
      border-width: 1px 1px 0 1px;
      color: #000000;
    }
  </style>
</head>
<body>
  #{content}
</body>
</html>"
    end
  end
end
