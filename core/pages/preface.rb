#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class PrefacePage
  
  include Page

  def initialize
    
    @type = "preface"
    
  end

  def content

    return "((Preface))"
    
  end
  
end