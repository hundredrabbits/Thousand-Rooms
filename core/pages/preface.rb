#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class PrefacePage
  
  include Page

  def initialize loc_text
    
    @type = "preface"
    
    @style = {}
    @style["p"] = "padding:40px; font-size:26px; line-height:36px"
    @style["trema"] = "display:none !important"
    @is_increment = true

    @text = loc_text[$lang] ? loc_text[$lang] : loc_text[:en]

  end

  def content

    return "<p>#{@text}</p>"
    
  end
  
end