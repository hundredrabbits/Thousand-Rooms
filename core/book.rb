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

  @font-face { font-family: 'Jura'; src: url('assets/fonts/jura_regular.ttf') format('truetype'); font-weight: normal; font-style: normal; }
  @page { size: 148mm 210mm; width:592px; height:840px; margin:0px; padding:0px }
  body { font-family:'azuki_font','aquafont','Garamond'; padding:0px; margin:0px;}
  page { page-break-after: always; display:block; position:relative; overflow:hidden; background:#ffffff; width:592px; height:820px; border:1px solid #fefefe; }
  page id { position: absolute;bottom: 10px;display: block;text-align: center;width:100%;}
  page grave { display:inline; background-image:url(assets/accent.grave.svg); background-position:center 0px}
  page aigue { display:inline; background-image:url(assets/accent.aigue.svg); background-position:center 0px}
  page cedil { display:inline; background-image:url(assets/accent.cedil.svg); background-position:center 0px}
  page trema { display: inline-block;background-position: center 0px;height: 15.5px;}
  page trema:before { background-color:white; display: inline-block;width: 15px;height: 15px;content: ' ';position: absolute; background-image: url(assets/accent.trema.svg); }
  body.lang_el { font-family: 'Yuanti TC', sans-serif; }
  body.lang_ru h1 { letter-spacing:-12px}
  body.lang_ru .cover h1 { letter-spacing:-8px}
  body.lang_ru .title h1 { letter-spacing:-8px}
  body.lang_ru .preface p {letter-spacing:-6px}
  body.lang_ru .thank p {letter-spacing:-6px}
  body.lang_ar { font-family: 'Jura', Tahoma !important; }
  "
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
    out_file = File.new("thousand.#{$lang}.html", "w")
    out_file.puts("<html><meta charset='UTF-8'><body class='lang_#{$lang}'>#{content}</body></html>")
    out_file.close
    
    puts "Completed #{count} pages, for thousand.#{$lang}.html"
    puts "Word count: #{$word_cound}"

  end
  
end
