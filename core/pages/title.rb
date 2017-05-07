#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class TitlePage
  
  include Page

  def initialize loc_text
    
    @type = "title"
    @is_increment = true
    
    @style = {}
    @style["h1"] = "font-weight:normal; text-transform:uppercase; display:block; text-align:center; font-size:36px; margin-top:160px; margin-bottom:80px"
    @style["h2"] = "text-transform:uppercase; display:block; text-align:center; font-size:32px; font-weight:normal; margin-bottom:40px"
    @style["h3"] = "display:block; text-align:center; font-size:32px; margin-top:40px; font-weight:normal; line-height:40px; margin-bottom:40px"
    @style["img"] = "display: block; width: 200px; margin:0px auto; margin-bottom:80px"

    @text = loc_text[$lang]
    
  end

  def content

    return "
<h1>#{@text[0]}</h1>
<img src='assets/glyph.png'/>
<h2>#{@text[1]}</h2>
<h3>#{@text[2]}</h3>
"
    
  end
  
end