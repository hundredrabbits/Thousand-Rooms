#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class TitlePage
  
  include Page

  def initialize
    
    @type = "title"
    @style = {}
    @style["h1"] = "text-transform:uppercase; display:block; text-align:center; font-size:36px; margin-top:100px;"
    @style["h2"] = "text-transform:uppercase; display:block; text-align:center; font-size:20px; margin-top:40px; font-weight:normal"
    @style["h3"] = "display:block; text-align:center; font-size:16px; margin-top:40px; font-weight:normal; font-style:italic"
    @style["h4"] = "text-transform:uppercase; display:block; text-align:center; font-size:12px; margin-top:20px; font-weight:normal"
    @style["img"] = "display: block; width: 150px; margin:0px auto"
    
  end

  def content

    return "
<h1>Thousand Rooms</h1>
<img src='assets/title.desk.png'/>
<h2>Pencil, Paper & Desk</h2>
<h3>Rekka Bellum & Devine Lu Linvega</h3>
<h4>Hundred Rabbits</h4>
"
    
  end
  
end