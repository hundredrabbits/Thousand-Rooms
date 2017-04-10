#!/bin/env ruby
# encoding: utf-8

module Page
  
  attr_accessor :id
  attr_accessor :type
  attr_accessor :style
  attr_accessor :is_increment

  def initialize type
    
    @id = 0
    @type = type
    @style = {}
    @is_increment = false

  end

  def to_s

    return "<page class='#{@type}'>\n  #{content}\n</page>\n\n"

  end

  def content

    return "<missing/>"
    
  end
  
end