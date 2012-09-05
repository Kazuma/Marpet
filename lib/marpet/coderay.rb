require 'redcarpet/compat'
require 'coderay'

class Coderay < Redcarpet::Render::HTML
  def block_code(code, language)
    if language.nil?
      language = :text
    end
    CodeRay.scan(code, language).div
  end
end
