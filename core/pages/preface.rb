#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class PrefacePage
  
  include Page

  def initialize
    
    @type = "preface"
    
    @style = {}
    @style["p"] = "padding:40px; font-size:16px; line-height:20px"

  end

  def content

    return "<p>You wake up in a room, a wooden desk with a piece of blank paper and pencil lies in front of you. The walls of the room are white of an unbreakable matter, the room is about 4 square meters. Inside the furniture, pages with notes written with your handwritting, you have no recollection.</p>"
    
  end
  
end