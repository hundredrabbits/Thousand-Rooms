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
    @style["img"] = "background:red; display: block; width:calc(100% - 20px); position:absolute; bottom:0px"
    @style["h1"] = "position:absolute; top:100px; display:block; text-align:center; width:100%"

  end

  def content

    return "<img src='assets/#{@name}.png'/>
  <h1>#{@text}</h1>
  <id>#{@id}</id>"
    
  end
  
end