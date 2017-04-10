#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class TitlePage
  
  include Page

  def initialize
    
    @type = "title"
    @style = {}
    @style["h1"] = "color:purple"
    
  end

  def content

    return "By: Rekka Bellum"
    
  end
  
end