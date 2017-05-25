#!/bin/env ruby
# encoding: utf-8

require_relative "core/book.rb"
require_relative "core/page.rb"

require_relative 'core/pages/blank.rb'
require_relative 'core/pages/title.rb'
require_relative 'core/pages/illustration.rb'
require_relative 'core/pages/preface.rb'
require_relative 'core/pages/chapter.rb'
require_relative 'core/pages/cover.rb'

$lang = ARGV.first.to_sym ? ARGV.first.to_sym : :en

title = {
  :en => "Thousand Rooms", 
  :fr => "Milles Pi<grave>e</grave>ces", 
  :ru => "Тысяча Комнат", 
  :jp => "せんへや",
  :li => "Lae'Doi"
}

book = Book.new(title)

book.add_page(CoverPage.new(title))

book.add_page(BlankPage.new)

book.add_page(TitlePage.new({
  :en => [title[:en],"Cat, Owl, Bat & Fox","Illustrated by Rekka Bellum<br />Written by Devine Lu Linvega","First Edition"],
  :fr => [title[:fr],"Chat, Hibou, Chauve-Souris & Renard","Illustr<aigue>e</aigue>e par Rekka Bellum<br /><aigue>E</aigue>crit par Devine Lu Linvega","Premi<grave>e</grave>re <aigue>E</aigue>dition"],
  :ru => [title[:ru],"Кошка, Сова, Летучая Мышь & Лиса","Р. БЕЛУМ<br />Под редакцией<br />Д. Л. ЛИНВЕГА","Издание Второе"],
  :jp => [title[:jp],"ネコ、アウル、バットとキツネ","レッカベラムのイラスト<br />デルリンちょ","しょはん"],
  :li => [title[:li],"Es el K<trema>a</trema>t J<trema>o</trema>l V<trema>a</trema>t F<trema>o</trema>j ul","R. Bellum'Fita.<br />D. Lu Linvega'Fide","Lady'Al."]
}))

book.add_page(BlankPage.new)

book.add_page(PrefacePage.new({
  :en => "You wake up in a room, surrounded by unbreakable walls. On a desk, lies a pencil and a sheet of blank paper.<br/> Inside the desk, notes bearing your handwriting, you have no recollection.",
  :fr => "Vous vous r<aigue>e</aigue>veillez dans une pi<grave>e</grave>ce, entour<aigue>e</aigue> de murs incassables. Sur un pupitre se trouve un crayon et une feuille de papier. <grave>A</grave> l'int<aigue>e</aigue>rieur, une note portant votre <aigue>e</aigue>criture. Vous ne vous souvenez de rien",
  :ru => "You wake up in a room, surrounded by white unbreakable walls. On a desk, lies a pencil and a sheet of blank paper.<br/> Inside the desk, notes bearing your handwriting, you have no recollection.",
  :jp => "へやにおきる、こわさないのかべでとりまいている。つくえのうえには、えんぴつとブランクのかみをいる。<br/>　つくえのなかには、あたしのてがきのメモがいる。なにもおもいださない。",
  :li => "Doki el lyfasi es jof<trema>i</trema>l ul'ok ev lari'fori j<trema>a</trema>f. Todeo'ik ev el tofitay es tofatay ul. Todeo'ok ev doety'tado el lari'tado ul. Lari'fadiro'dijo."
}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(1,{
  :en => "Lesson 1",                                    
  :fr => "Premi<grave>e</grave>re Le<cedil>c</cedil>on",                                      
  :ru => "Урок 1",                                     
  :jp => "だい１か",
  :li => "Doeti'Lyde"}))
book.add_page(IllustrationPage.new("cat.1",{
  :en => "Cat awakens.",                                
  :fr => "Chat se r<aigue>e</aigue>veille.",                            
  :ru => "Кошка пробуждается. ",                        
  :jp => "ネコはおきる。",
  :li => "K<trema>a</trema>t'fori j<trema>a</trema>f."}))
book.add_page(IllustrationPage.new("owl.1",{
  :en => "Owl finds a piece of paper.",                 
  :fr => "Hibou trouve une feuille de papier.",                 
  :ru => "Сова находит лист бумаги. ",                  
  :jp => "アウルはかみをみつける。",
  :li => "J<trema>o</trema>l'faji tofatay."}))
book.add_page(IllustrationPage.new("bat.1",{
  :en => "Bat finds a pencil.",                         
  :fr => "Chauve-souris trouve un crayon.",              
  :ru => "Бат находит ручку. ",                         
  :jp => "バットはえんぴつをみつける。",
  :li => "V<trema>a</trema>t'faji tofitay."}))
book.add_page(IllustrationPage.new("fox.1",{
  :en => "Fox opens the desk.",                         
  :fr => "Renard ouvre le pupitre.",                     
  :ru => "Фокс открывает стол. ",                       
  :jp => "キツネはつくえをあく。",
  :li => "F<trema>o</trema>j'firo todeo."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(2,{
  :en => "Lesson 2",                                    
  :fr => "Deuxi<grave>e</grave>me Le<cedil>c</cedil>on",                                   
  :ru => "Урок 2",                               
  :jp => "だい２か",
  :li => "Doeti'Il"}))
book.add_page(IllustrationPage.new("cat.2",{
  :en => "Cat claws at the walls.",                         
  :fr => "Chat griffe les murs.",                        
  :ru => "Кошачьи когти у стен. ",                      
  :jp => "ネコはかべをひっかく。",
  :li => "K<trema>a</trema>t'fivota jofy."}))
book.add_page(IllustrationPage.new("owl.2",{
  :en => "Owl leaves a message in the desk.",           
  :fr => "Hibou laisse un message dans le pupitre.",  
  :ru => "Сова оставляет сообщение на столе. ",         
  :jp => "アウルはつくえにメッセージをおく。",
  :li => "J<trema>o</trema>l'fiko el todeo'ok ev doety ul."}))
book.add_page(IllustrationPage.new("bat.2",{
  :en => "Bat finds a second pencil.",                  
  :fr => "Chauve-souris trouve un autre crayon.",        
  :ru => "Бат находит вторую ручку. ",                  
  :jp => "バットはふたつめのえんぴつをみつける。",
  :li => "V<trema>a</trema>t'faji tofitay'il'es."}))
book.add_page(IllustrationPage.new("fox.2",{
  :en => "Fox dismantles the desk.",                    
  :fr => "Renard d<aigue>e</aigue>construit le pupitre.",               
  :ru => "Фокс разбирает стол. ",                       
  :jp => "キツネはつくえをかいたいする",
  :li => "F<trema>o</trema>j'f<trema>i</trema>l todeo."}))


book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(3,{
  :en => "Lesson 3",                                    
  :fr => "Troisi<grave>e</grave>me Le<cedil>c</cedil>on",                              
  :ru => "Урок 3",                                      
  :jp => "だい３か",
  :li => "Doeti'Lio"}))
book.add_page(IllustrationPage.new("cat.3",{
  :en => "Cat destroys the pencil and the paper.",      
  :fr => "Chat d<aigue>e</aigue>truit le crayon et la feuille de papier.",         
  :ru => "Кошка уничтожает карандаш и бумагу. ",        
  :jp => "ネコはえんぴつとかみをこわす。",
  :li => "K<trema>a</trema>t'filo el tofitay es tofatay ul."}))
book.add_page(IllustrationPage.new("owl.3",{
  :en => "Owl finds notes in the desk.",                 
  :fr => "Hibou trouve une note dans le pupitre.",       
  :ru => "Сова находит записки на столе »",             
  :jp => "アウルはつくえのなかにメモをみつける。",
  :li => "J<trema>o</trema>l'faji el todeo'ok ev doety ul."}))
book.add_page(IllustrationPage.new("bat.3",{
  :en => "Bat finds the desk full with pencils.",       
  :fr => "Chauve-souris trouve plusieurs crayons.",       
  :ru => "Бат больше не может вставлять ручки в стол.", 
  :jp => "バットはえんぴつがおおいのつくえをみつける。",
  :li => "V<trema>a</trema>t'faji el todeo'ok ev tofitay'il ul."}))
book.add_page(IllustrationPage.new("fox.3",{
  :en => "Fox builds the desk inside-out.",             
  :fr => "Renard reconstruit le pupitre <grave>a</grave> l'envers.",    
  :ru => "Фокс перестраивает стол наизнанку »",         
  :jp => "キツネはつくえをうらがえしにたてる。",
  :li => "F<trema>o</trema>j'fito todeo'roi."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(4,{
  :en => "Lesson 4",                                    
  :fr => "Quatri<grave>e</grave>me Le<cedil>c</cedil>on",                                 
  :ru => "Урок 4",                                     
  :jp => "だい４か",
  :li => "Doeti'Lia"}))
book.add_page(IllustrationPage.new("cat.4",{
  :en => "Cat enters the desk.",                        
  :fr => "Chat entre dans le pupitre.",                  
  :ru => "Кошка входит на стол. ",                      
  :jp => "ネコはつくえにはいる。",
  :li => "K<trema>a</trema>t'foroka todeo."}))
book.add_page(IllustrationPage.new("owl.4",{
  :en => "Owl tries to understand.",                    
  :fr => "Hibou essaie de comprendre.",               
  :ru => "Сова пытается осмыслить комнату. ",           
  :jp => "アウルはしりたい。",
  :li => "J<trema>o</trema>l'fati'dij<trema>a</trema>r."}))
book.add_page(IllustrationPage.new("bat.4",{
  :en => "Bat sees no escape.",                         
  :fr => "Chauve-souris n'en peut plus.",                 
  :ru => "Bat достаточно насмотрелся. ",                
  :jp => "バットはにげない。",
  :li => "V<trema>a</trema>t'forika'dijo."}))
book.add_page(IllustrationPage.new("fox.4",{
  :en => "Fox has a visitor.",                          
  :fr => "Renard <grave>a</grave> un visiteur.",                       
  :ru => "У Лиса есть посетитель.",                     
  :jp => "キツネはきゃくがある。",
  :li => "F<trema>o</trema>j'af daku'al'es."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(5,{
  :en => "Lesson 5",                                    
  :fr => "Cinqui<grave>e</grave>me Le<cedil>c</cedil>on",                                   
  :ru => "Урок 5",                                     
  :jp => "だい５か",
  :li => "Doeti'L<trema>i</trema>"}))
book.add_page(IllustrationPage.new("cat.5",{
  :en => "Cat comes out of the desk.",                   
  :fr => "Chat sort du pupitre.",                        
  :ru => "Cat выходит из кошачьего стола ",             
  :jp => "ネコはつくえからをでる。",
  :li => "K<trema>a</trema>t'forika todeo."}))
book.add_page(IllustrationPage.new("owl.5",{
  :en => "Owl understands the room.",                    
  :fr => "Hibou a tout compris.",                     
  :ru => "Сова поняла мир! »",                          
  :jp => "アウルはわかろうとする。",
  :li => "J<trema>o</trema>l'fati doki."}))
book.add_page(IllustrationPage.new("bat.5",{
  :en => "Bat awakens.",                                
  :fr => "Chauve-souris se r<aigue>e</aigue>veille.",                   
  :ru => "Летучая мышь пробуждается. ",                 
  :jp => "バットはおきる。",
  :li => "V<trema>a</trema>t'fori j<trema>a</trema>f."}))
book.add_page(IllustrationPage.new("fox.5",{
  :en => "Fox has a second visitor.",                    
  :fr => "Renard <grave>a</grave> un visiteur.",                        
  :ru => "У Фокса еще один посетитель »",               
  :jp => "キツネはにばんめのきゃくがある。",
  :li => "F<trema>o</trema>j'af daku'il'es."}))


book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(6,{
  :en => "Lesson 6",                                    
  :fr => "Sixi<grave>e</grave>me Le<cedil>c</cedil>on",                                                
  :ru => "Урок 6",                                     
  :jp => "だい６か",
  :li => "Doeti'Liso"}))
book.add_page(IllustrationPage.new("cat.6",{
  :en => "Cat destroys the desk.",                      
  :fr => "Chat d<aigue>e</aigue>truit le pupitre.",                     
  :ru => "Кошка разрушает стол. ",                      
  :jp => "ネコはつくえをこわす。",
  :li => "K<trema>a</trema>t'filo todeo."}))
book.add_page(IllustrationPage.new("owl.6",{
  :en => "Owl finds a scribble.",                       
  :fr => "Hibou trouve un gribouillage.",                   
  :ru => "Сова находит каракули в столе. ",             
  :jp => "アウルはらくがきをみつける",
  :li => "J<trema>o</trema>l'faji douty."}))
book.add_page(IllustrationPage.new("bat.6",{
  :en => "Bat finds a pencil.",                         
  :fr => "Chauve-souris trouve un crayon.",              
  :ru => "Бат находит ручку. ",                         
  :jp => "バットはえんぴつをみつける。",
  :li => "V<trema>a</trema>t'faji tofitay."}))
book.add_page(IllustrationPage.new("fox.6",{
  :en => "Fox has too many visitors.",                  
  :fr => "Renard a trop de visiteurs.",                  
  :ru => "Фокс слишком много посетителей. ",            
  :jp => "キツネはきゃくがおおい。",
  :li => "F<trema>o</trema>j'of dulida."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(7,{
  :en => "Last Lesson",                                 
  :fr => "Derni<grave>e</grave>re Le<cedil>c</cedil>on",                                                
  :ru => "Последней Урок",                                     
  :jp => "さいしゅうか",
  :li => "Doeti'Lydu"}))
book.add_page(IllustrationPage.new("you.1",{
  :en => "What would you do?",                          
  :fr => "Que ferais-tu?",                     
  :ru => "Кошка разрушает стол. ",                      
  :jp => "なにするか？",
  :li => "Lari'if jado."}))

book.add_page(BlankPage.new)
book.add_page(BlankPage.new)

book.build
