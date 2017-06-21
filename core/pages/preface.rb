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
    @style[".umlaut:before"] = "margin-left: -7px; top:-10px; width: 13px; margin-top: 12px;"
    @is_increment = true

    @text = loc_text

  end

  def content

    return "<p>#{@text}</p>"
    
  end
  
end