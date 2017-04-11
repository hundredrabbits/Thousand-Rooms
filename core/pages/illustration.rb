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
    @style["img"] = "background:red; display: block; width:100%"
    @style["h1"] = "display:block; text-align:center"

  end

  def content

    return "<img src='assets/#{@name}.jpg'/>
  <h1>#{@text}</h1>
  <id>#{@id}</id>"
    
  end
  
end