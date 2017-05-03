#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class CoverPage
  
  include Page

  def initialize loc_title
    
    @type = "cover"
    @title = loc_title[$lang]

    @style = {}
    @style[""] = "background:black; overflow:hidden"
    @style["img"] = "width:100%"
    @style["h1"] = "position:absolute; bottom:60px; color:white; text-transform:uppercase; width:100%; text-align:center"

  end

  def content

    return "<img src='assets/cover.svg'/><h1>#{@title}</h1>"
    
  end
  
end