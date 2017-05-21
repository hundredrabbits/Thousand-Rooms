#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class ChapterPage
  
  include Page

  def initialize chapter, loc_text
    
    @chapter = chapter
    @type = "chapter"
    @text = loc_text[$lang] ? loc_text[$lang] : loc_text[:en]
    @is_increment = true

    @style = {}
    @style["h1"] = "position:absolute; top:40%; display:block; text-align:center; margin-top:-13px;font-size:40px; width:100%; font-weight: normal"
    @style["img"] = "width: 300px;height: 300px;position: absolute;top: calc(50%);left: calc(50% - 150px)"

  end

  def content

    return "<h1>#{@text}</h1><img src='assets/lesson.#{@chapter}.png'/>"
    
  end
  
end