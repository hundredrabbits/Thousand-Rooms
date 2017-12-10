#!/bin/env ruby
# encoding: utf-8

class Book
  
  attr_accessor :name
  attr_accessor :style
  attr_accessor :content
  
  def initialize content
    
    # A5 = 148mm x 210mm
    @content = content
    @style = default_styles
    
  end
  
  def build

    @content.each do |lang,pages|
      puts "Building #{pages[:language]}"
      assemble(pages)
      bind(lang,order_for_print(@pages),"print")
    end

  end

  def order_for_print pages

    new_sequence = []
    puts "- Reordering #{pages.length} pages for print"
    i = 0
    while i < (pages.length/2)
      new_sequence.push(pages[i])
      new_sequence.push(pages[pages.length-i-1])
      puts pages[pages.length-i-1] && pages[i] ? "> Page #{i} <#{i} & #{pages.length-i-1}> #{pages[i].type} & #{pages[pages.length-i-1].type}" : "Missing page"
      i += 1
    end

    return new_sequence

  end

  def assemble target_story
    
    puts "- Assembling #{target_story[:title]}, by #{target_story[:translator]}"

    @pages = []
    @name = name
    @increment = 0

    add_page(CoverPage.new(target_story[:title]))
    add_page(BlankPage.new)
    add_page(TitlePage.new(target_story[:title_page]))
    add_page(BlankPage.new)
    add_page(PrefacePage.new(target_story[:preface]))
    add_page(BlankPage.new)
    add_page(ChapterPage.new(1,target_story[:lesson1][0]))
    add_page(IllustrationPage.new("cat.1",target_story[:lesson1][1]))
    add_page(IllustrationPage.new("owl.1",target_story[:lesson1][2]))
    add_page(IllustrationPage.new("bat.1",target_story[:lesson1][3]))
    add_page(IllustrationPage.new("fox.1",target_story[:lesson1][4]))
    add_page(BlankPage.new)

    add_page(ChapterPage.new(2,target_story[:lesson2][0]))
    add_page(IllustrationPage.new("cat.2",target_story[:lesson2][1]))
    add_page(IllustrationPage.new("owl.2",target_story[:lesson2][2]))
    add_page(IllustrationPage.new("bat.2",target_story[:lesson2][3]))
    add_page(IllustrationPage.new("fox.2",target_story[:lesson2][4]))
    add_page(BlankPage.new)

    add_page(ChapterPage.new(3,target_story[:lesson3][0]))
    add_page(IllustrationPage.new("cat.3",target_story[:lesson3][1]))
    add_page(IllustrationPage.new("owl.3",target_story[:lesson3][2]))
    add_page(IllustrationPage.new("bat.3",target_story[:lesson3][3]))
    add_page(IllustrationPage.new("fox.3",target_story[:lesson3][4]))
    add_page(BlankPage.new)

    add_page(ChapterPage.new(4,target_story[:lesson4][0]))
    add_page(IllustrationPage.new("cat.4",target_story[:lesson4][1]))
    add_page(IllustrationPage.new("owl.4",target_story[:lesson4][2]))
    add_page(IllustrationPage.new("bat.4",target_story[:lesson4][3]))
    add_page(IllustrationPage.new("fox.4",target_story[:lesson4][4]))
    add_page(BlankPage.new)

    add_page(ChapterPage.new(5,target_story[:lesson5][0]))
    add_page(IllustrationPage.new("cat.5",target_story[:lesson5][1]))
    add_page(IllustrationPage.new("owl.5",target_story[:lesson5][2]))
    add_page(IllustrationPage.new("bat.5",target_story[:lesson5][3]))
    add_page(IllustrationPage.new("fox.5",target_story[:lesson5][4]))
    add_page(BlankPage.new)

    add_page(ChapterPage.new(6,target_story[:lesson6][0]))
    add_page(IllustrationPage.new("cat.6",target_story[:lesson6][1]))
    add_page(IllustrationPage.new("owl.6",target_story[:lesson6][2]))
    add_page(IllustrationPage.new("bat.6",target_story[:lesson6][3]))
    add_page(IllustrationPage.new("fox.6",target_story[:lesson6][4]))
    add_page(BlankPage.new)

    add_page(ChapterPage.new(7,target_story[:lesson7][0]))
    add_page(BlankPage.new)
    add_page(IllustrationPage.new("you.1",target_story[:lesson7][1]))
    add_page(BlankPage.new)

    add_page(ThankPage.new(target_story[:thanks],@content))
    add_page(BackCoverPage.new)

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

  def bind lang,pages = @pages, format = "digital"

    puts "- Binding #{@pages.length} pages"

    body = "<style>\n#{@style}</style>\n\n"

    # Print pages
    count = 0
    pages.each do |page|
      progress = (((count+1)/pages.length.to_f)*100).to_i
      body += page.to_s
      count += 1
    end
    out_file = File.new("thousand.#{lang}.#{format}.html", "w")
    out_file.puts("<html><meta charset='UTF-8'><body class='lang_#{lang} format_#{format}'>#{body}</body></html>")
    out_file.close
    
    puts "- Binding complete.\n\n"

  end

  def default_styles

    return "
@font-face { font-family: 'maruko'; src: url('assets/fonts/maruko.ttf') format('truetype'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'tea'; src: url('assets/fonts/tea.ttf') format('truetype'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'Jura'; src: url('assets/fonts/jura_regular.ttf') format('truetype'); font-weight: normal; font-style: normal; }
@page { size: 148mm 210mm; width:592px; height:840px; margin:0px; padding:0px }
body { font-family:'azuki_font','aquafont','Garamond'; padding:0px; margin:0px;}
page { page-break-after: always; display:block; position:relative; overflow:hidden; background:#ffffff; width:592px; height:820px; }
page id { position: absolute;bottom: 10px;display: block;text-align: center;width:100%;}
page grave { display:inline; background-image:url(assets/accent.grave.svg); background-position:center 0px; background-repeat:no-repeat}
page aigue { display:inline; background-image:url(assets/accent.aigue.svg); background-position:center 0px; background-repeat:no-repeat}
page tilde { display:inline; background-image:url(assets/accent.tilde.svg); background-position:center 0px; background-repeat:no-repeat}
page cedil { display:inline; background-image:url(assets/accent.cedil.svg); background-position:center 0px; background-repeat:no-repeat}
page trema { display: inline-block;background-position: center 0px;height: 15.5px;; background-repeat:no-repeat}
page trema:before { background-color:white; display: inline-block;width: 15px;height: 15px;content: ' ';position: absolute; background-image: url(assets/accent.trema.svg); }
page .umlaut { display: inline-block; position: relative; }
page .umlaut:before { display: block; width: 17px; margin-left: -9px; height: 100%; content: ''; position: absolute; top: 8px; left: 50%; background: url(assets/accent.umlaut.svg) no-repeat center top; background-size: contain; }

page.title aigue { display: inline-block;background-position-y: -4px  }
page.illustration aigue { background-size: 18px 20px }
page.chapter aigue { background-size: 18px 20px }

body.lang_ru h1 { letter-spacing:-12px}
body.lang_ru .cover h1 { letter-spacing:-8px}
body.lang_ru .title h1 { letter-spacing:-8px}
body.lang_ru .preface p {letter-spacing:-6px}
body.lang_ru .thank p {letter-spacing:-6px}

body.lang_el { font-family: 'aquafont', 'Yuanti TC', sans-serif; }
body.lang_el h1 { letter-spacing:-4px}
body.lang_el .illustration h1 { letter-spacing:-8px}
body.lang_el .preface p { letter-spacing:-6px}

body.lang_ar { font-family: 'Jura', Tahoma !important; }
body.lang_ar line { display:block}
body.lang_ar .preface line { text-align:right}

body.lang_ch { font-family: 'tea'}

body.lang_pt { font-family: 'aquafont', 'Yuanti TC', sans-serif; }
body.lang_pl { font-family: 'aquafont', 'Yuanti TC', sans-serif; }
body.lang_hu { font-family: 'aquafont', 'Yuanti TC', sans-serif; }

body.format_print { background:white; width:1233px}
body.format_print page { page-break-after: unset;display:block; float:left; border-bottom:1px solid white}
body.format_print page:nth-child(odd) { page-break-after: right; border-left:1px solid black; border-right:1px solid white; margin-left:40px }
body.format_print page:nth-child(even) { page-break-after: left; clear:both; }


"
  end

  
end
