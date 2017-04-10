#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class BlankPage
  
  include Page

  def initialize
    
    @type = "blank"
    
  end

  def content

    return ""
    
  end
  
end