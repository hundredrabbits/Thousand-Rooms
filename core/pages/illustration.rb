#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class IllustrationPage
  
  include Page

  def initialize name = "missing", loc_text = nil
    
    @type = "illustration"
    @name = name
    @text = loc_text[$lang] ? loc_text[$lang] : loc_text[:en]

    if !loc_text[$lang] then puts "Missing localized #{$lang} text for #{@text}." end
    @is_increment = true
    
    @style = {}
    @style["img"] = "display: block; width:100%; position:absolute; bottom:0px"
    @style["h1"] = "position:absolute; top:50px; display:block; text-align:center; width:calc(100% - 40px); padding:0px 20px; font-size:26px;font-weight: normal"

  end

  def content

    return "<img src='assets/#{@name}.png'/>
  <h1>#{@text}</h1>"
    
  end
  
end