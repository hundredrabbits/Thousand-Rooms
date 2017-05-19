#!/bin/env ruby
# encoding: utf-8

class Book
  
  attr_accessor :name
  attr_accessor :style
  
  def initialize name
    
    # A5 = 148mm x 210mm
    @name = name[$lang]
    @pages = []
    @style = "
  @page { size: 148mm 210mm; width:592px; height:840px; margin:0px; padding:0px }
  body { font-family:'azuki_font','aquafont','Garamond'; padding:0px; margin:0px;}
  page { page-break-after: always; display:block; position:relative; overflow:hidden; background:#fefefe; width:592px; height:820px;}
  page id { position: absolute;bottom: 10px;display: block;text-align: center;width:100%;}"
    @increment = 0
    
  end

  def add_page page

    page.id = page.is_increment ? @increment += 1 : 0

    if page.style
      page.style.each do |tag,style|
        if @style.include?("page.#{page.type} #{tag}") then next end
        @style += "  page.#{page.type} #{tag} { #{style} }\n"  
      end
    end

    @pages.push(page)

  end
  
  def build
  
    puts "Generating.."

    content = "<style>\n#{@style}</style>\n\n"

    # Print pages
    count = 0
    @pages.each do |page|
      progress = (((count+1)/@pages.length.to_f)*100).to_i
      puts "#{progress}% Page: #{page.id} #{page.type}"
      content += page.to_s
      count += 1
    end

    # Create file
    out_file = File.new("#{@name}.html", "w")
    out_file.puts("<html><meta charset='UTF-8'>#{content}</html>")
    out_file.close
    
    puts "Done."

  end
  
end