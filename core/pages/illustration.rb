#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class IllustrationPage
  
  include Page

  def initialize name = "missing", text = "missing"
    
    @type = "illustration"
    @name = name
    @text = text
    @is_increment = true
    
    @style = {}
    @style["img"] = "display: block; width:calc(100% - 20px); position:absolute; bottom:45px"
    @style["h1"] = "position:absolute; top:50px; display:block; text-align:center; width:calc(100% - 40px); padding:0px 20px"

  end

  def content

    return "<img src='assets/#{@name}.png'/>
  <h1>#{@text}</h1>
  <id>#{@id}</id>"
    
  end
  
end