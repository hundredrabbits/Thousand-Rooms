#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class ChapterPage
  
  include Page

  def initialize loc_text
    
    @type = "chapter"
    @text = loc_text[$lang]
    @is_increment = true

    @style = {}
    @style["h1"] = "position:absolute; top:50%; display:block; text-align:center; margin-top:-13px;font-size:26px; width:100%; "

  end

  def content

    return "<h1>#{@text}</h1>"
    
  end
  
end