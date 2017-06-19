#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class IllustrationPage
  
  include Page

  def initialize name = "missing", loc_text = nil
    
    @type = "illustration"
    @name = name
    @text = loc_text
    @is_increment = true
    
    @style = {}
    @style["img"] = "display: block; width:100%; position:absolute; bottom:0px"
    @style["h1"] = "position:absolute; top:100px; display:block; text-align:center; width:calc(100% - 40px); padding:0px 20px; font-size:38px;font-weight: normal; line-height: 60px"
    @style["h1 trema:before"] = "top:10px"

  end

  def content

    return "<img src='assets/#{@name}.png'/>
  <h1>#{@text}</h1>"
    
  end
  
end