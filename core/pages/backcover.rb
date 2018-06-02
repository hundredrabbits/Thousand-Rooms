#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class BackCoverPage
  
  include Page

  def initialize 
    
    @type = "back_cover"
    @is_increment = true

    @style = {}
    @style[""] = "background:white; overflow:hidden"
    @style["img.logo"] = "position: absolute;bottom: 0px;width: 70px;height: 70px;display: block;left:calc(50% - 35px);"

  end

  def content

    return "<img class='logo' src='assets/hundred.rabbits.logo.svg'/>"
    
  end
  
end