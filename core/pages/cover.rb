#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class CoverPage
  
  include Page

  def initialize loc_title
    
    @type = "cover"
    @title = loc_title[$lang]
    @is_increment = true

    @style = {}
    @style[""] = "background:white; overflow:hidden"
    @style["img"] = "width:100%"
    @style["h1"] = "position:absolute; bottom:100px; color:black; text-transform:uppercase; width:100%; text-align:center; font-weight:normal; font-size:36px"
    @style["img.logo"] = "position: absolute;bottom: 0px;width: 70px;height: 70px;display: block;left:calc(50% - 35px);"

  end

  def content

    return "<img src='assets/cover.svg'/><h1>#{@title}</h1><img class='logo' src='assets/hundred.rabbits.logo.svg'/>"
    
  end
  
end