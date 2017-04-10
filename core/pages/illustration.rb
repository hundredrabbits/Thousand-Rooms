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
    @style["img"] = "background:red"
    @style["h1"] = "color:blue"

  end

  def content

    return "<img src='assets/#{@name}.png'/>
  <h1>#{@text}</h1>
  <id>#{@id}</id>"
    
  end
  
end