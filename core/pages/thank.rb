#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class ThankPage
  
  include Page

  def initialize loc_text = nil, story
  
    @type = "thank"
    @text = loc_text
    @is_increment = true

    @style = {}
    @style["p"] = "padding:40px; font-size:26px; line-height:36px"
    @style["h1"] = "font-weight: normal;text-transform: uppercase;display: block;text-align: center;font-size: 36px;margin-top: 120px;margin-bottom: 40px"
    @style["list"] = "display:block"
    @style["list li"] = "display:block; font-size:20px; line-height:30px"
    @style["list li span.left"] = " width: calc(50% - 15px);display: inline-block;text-align: right;margin-right: 15px"
    @style["list li span.right"] = " width: calc(50% - 15px);display: inline-block;text-align: left;margin-left: 15px"

    body = ""
    story.each do |lang,content|
      if lang == :en then next end
      if lang == :fr then next end
      if lang == :li then next end
      body += "<li><span class='left'>#{content[:language]}</span><span class='right'>#{content[:translator]}</span></li>"
    end

    @thanks = loc_text
    @names = body

  end

  def content

    return "<h1>#{@thanks}</h1><list>#{@names}</list>"
    
  end
  
end