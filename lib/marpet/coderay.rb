require 'redcarpet/compat'
require 'coderay'

class Coderay < Redcarpet::Render::HTML
  def block_code(code, language)
    CodeRay.scan(code, language).div
  end
end
