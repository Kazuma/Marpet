require 'marpet/version'
require 'redcarpet/compat'
require 'coderay'

module Marpet
  class Coderay < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(:line_numbers => false)
    end
  end

  class Converter
    def initialize(path)
      @markdown = Redcarpet::Markdown.new(
        Coderay.new(:filter_html => true, :hard_wrap => true),
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
  <style media='screen'>
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
      padding-left: 30px;
    }

    p img
      padding-left: 2em;
    }
  </style>
  <style scoped>
    table {
      margin: 15px 0;
      padding: 0;
      border: 0;
      border-collapse: collapse;
      border-spacing: 0;
      font-size: 100%;
    }

    table th, table td {
      padding: 6px 13px;
      border: solid 1px #CCC;
    }

    table th {
      font-weight: bold;
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
