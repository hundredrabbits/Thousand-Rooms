#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class TitlePage
  
  include Page

  def initialize loc_text
    
    @type = "title"
    @is_increment = true
    
    @style = {}
    @style["h1"] = "font-weight: normal;text-transform: uppercase;display: block;text-align: center;font-size: 36px;margin-top: 120px;margin-bottom: 40px"
    @style["h2"] = "text-transform: uppercase;display: block;text-align: center;font-size: 30px;font-weight: normal;margin-bottom: 40px;padding: 0px 60px;line-height: 40px"
    @style["h3"] = "display:block; text-align:center; font-size:28px; margin-top:40px; font-weight:normal; line-height:40px; margin-bottom:40px;"
    @style["h4"] = "display: block;text-align: center;font-size: 18px;margin-top: 40px;font-weight: normal;line-height: 40px;margin-bottom: 40px;text-transform: uppercase "
    @style["img"] = "display: block;width: 200px;margin: 0px auto;margin-bottom: 40px"
    @style["grave"] = "background-position: center -1px;line-height: 50px;display: inline-block"
    @style["trema:before"] = "display:none !important"

    @text = loc_text[$lang] ? loc_text[$lang] : loc_text[:en]
    
  end

  def content

    return "
<h1>#{@text[0]}</h1>
<h2>#{@text[1]}</h2>
<img src='assets/glyph.png'/>
<h3>#{@text[2]}</h3>
<h4>#{@text[3]}</h4>
"
    
  end
  
end