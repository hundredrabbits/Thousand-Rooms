#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class ChapterPage
  
  include Page

  def initialize chapter, loc_text
    
    @chapter = chapter
    @type = "chapter"
    @text = loc_text[$lang]
    @is_increment = true

    @style = {}
    @style["h1"] = "position:absolute; top:50%; display:block; text-align:center; margin-top:-13px;font-size:26px; width:100%; font-weight: normal"
    @style["img"] = "width: 200px;height: 200px;position: absolute;top: calc(50% + 100px);left: calc(50% - 100px)"

  end

  def content

    return "<h1>#{@text}</h1><img src='assets/lesson.#{@chapter}.png'/>"
    
  end
  
end