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
  :jp => "Thousand Rooms",
  :li => "Lae'doi"
}

book = Book.new(title)

book.add_page(CoverPage.new(title))

book.add_page(BlankPage.new)

book.add_page(TitlePage.new({
  :en => [title[:en],"Cat, Owl, Bat & Fox","Illustrated by Rekka Bellum<br />Written by Devine Lu Linvega","First Edition"],
  :fr => [title[:fr],"Chat, Hibou, Chauve-Souris & Renard","Illustrated by Rekka Bellum<br />Written by Devine Lu Linvega","Premiere Edition"],
  :ru => [title[:ru],"Кошка, Сова, Летучая Мышь & Лиса","Р. БЕЛУМ<br />Под редакцией<br />Д. Л. ЛИНВЕГА","Издание Второе"],
  :jp => [title[:jp],"ネコ、アウル、バットとキツネ","レッカベラムのイラスト<br />デヴィンルリンヴェガちょ","しょはん"],
}))

book.add_page(BlankPage.new)

book.add_page(PrefacePage.new({
  :en => "You wake up in a room, surrounded by unbreakable walls. On a desk, lies a pencil and a sheet of blank paper.<br/> Inside the desk, notes bearing your handwriting, you have no recollection.",
  :fr => "You wake up in a room, surrounded by white unbreakable walls. On a desk, lies a pencil and a sheet of blank paper.<br/> Inside the desk, notes bearing your handwritting, you have no recollection.",
  :ru => "You wake up in a room, surrounded by white unbreakable walls. On a desk, lies a pencil and a sheet of blank paper.<br/> Inside the desk, notes bearing your handwritting, you have no recollection.",
  :jp => "へやにおきる、こわさないのかべでとりまいている。つくえのうえには、えんぴつとブランクのかみをいる。<br/>　つくえのなかには、あたしのてがきのメモがいる。なにもおもいださない。"
}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(1,{
  :en => "Lesson 1",                                    
  :fr => "Premi<grave>e</grave>re Le<cedil>c</cedil>on",                                      
  :ru => "Урок 1",                                     
  :jp => "だい１か",
  :li => "Dodeit'la"}))
book.add_page(IllustrationPage.new("cat.1",{
  :en => "Cat awakens.",                                
  :fr => "Chat se r<aigue>e</aigue>veille.",                            
  :ru => "Кошка пробуждается. ",                        
  :jp => "ネコはおきる。",
  :li => "Kat'fori jaf.",
  :li => "Kat'fori jäf. "}))
book.add_page(IllustrationPage.new("owl.1",{
  :en => "Owl finds a piece of paper.",                 
  :fr => "Hibou trouve une feuille.",                 
  :ru => "Сова находит лист бумаги. ",                  
  :jp => "アウルはかみをみつける。",
  :li => "Jol'faji XX"}))
book.add_page(IllustrationPage.new("bat.1",{
  :en => "Bat finds a pencil.",                         
  :fr => "Chauve-souris trouve un crayon.",              
  :ru => "Бат находит ручку. ",                         
  :jp => "バットはえんぴつをみつける。",
  :li => "Vat'faji tofiod."}))
book.add_page(IllustrationPage.new("fox.1",{
  :en => "Fox opens the desk.",                         
  :fr => "Renard ouvre le pupitre.",                     
  :ru => "Фокс открывает стол. ",                       
  :jp => "キツネはつくえをあく。",
  :li => "Foj'firo todeo. "}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(2,{
  :en => "Lesson 2",                                    
  :fr => "Deuxi<grave>e</grave>me Le<cedil>c</cedil>on",                                   
  :ru => "Урок 2",                               
  :jp => "だい２か",
  :li => "Dodeit'li"}))
book.add_page(IllustrationPage.new("cat.2",{
  :en => "Cat claws at the walls.",                         
  :fr => "Chat griffe les murs.",                        
  :ru => "Кошачьи когти у стен. ",                      
  :jp => "ネコはかべをひっかく。",
  :li => "K<trema>a</trema>t'fivoat dojoyf."}))
book.add_page(IllustrationPage.new("owl.2",{
  :en => "Owl leaves a message in the desk.",           
  :fr => "Hibou laisse un message dans le pupitre.",  
  :ru => "Сова оставляет сообщение на столе. ",         
  :jp => "アウルはつくえにメッセージをおく。",
  :li => "J<trema>o</trema>l'fiko todeo'koa doty."}))
book.add_page(IllustrationPage.new("bat.2",{
  :en => "Bat finds a second pencil.",                  
  :fr => "Chauve-souris trouve un autre crayon.",        
  :ru => "Бат находит вторую ручку. ",                  
  :jp => "バットはふたつめのえんぴつをみつける。",
  :li => "V<trema>a</trema>t'faji li'tofiod. "}))
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
  :jp => "だい３か"}))
book.add_page(IllustrationPage.new("cat.3",{
  :en => "Cat destroys the pencil and the paper.",      
  :fr => "Chat d<aigue>e</aigue>truit le crayon et le papier.",         
  :ru => "Кошка уничтожает карандаш и бумагу. ",        
  :jp => "ネコはえんぴつとかみをこわす。"}))
book.add_page(IllustrationPage.new("owl.3",{
  :en => "Owl finds notes in the desk",                 
  :fr => "Hibou trouve une note dans le pupitre.",       
  :ru => "Сова находит записки на столе »",             
  :jp => "アウルはつくえのなかにメモをみつける。"}))
book.add_page(IllustrationPage.new("bat.3",{
  :en => "Bat finds the desk full with pencils.",       
  :fr => "Chauve-souris trouve plusieur crayons.",       
  :ru => "Бат больше не может вставлять ручки в стол.", 
  :jp => "バットはえんぴつがおおいのつくえをみつける。"}))
book.add_page(IllustrationPage.new("fox.3",{
  :en => "Fox builds the desk inside-out.",             
  :fr => "Renard reconstruit le pupitre <grave>a</grave> l'envers.",    
  :ru => "Фокс перестраивает стол наизнанку »",         
  :jp => "キツネはつくえをうらがえしにたてる。"}))


book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(4,{
  :en => "Lesson 4",                                    
  :fr => "Quatri<grave>e</grave>me Le<cedil>c</cedil>on",                                 
  :ru => "Урок 4",                                     
  :jp => "だい４か"}))
book.add_page(IllustrationPage.new("cat.4",{
  :en => "Cat enters the desk.",                        
  :fr => "Chat entre dans le pupitre.",                  
  :ru => "Кошка входит на стол. ",                      
  :jp => "ネコはつくえにはいる。"}))
book.add_page(IllustrationPage.new("owl.4",{
  :en => "Owl tries to understand.",                    
  :fr => "Hibou essaie de comprendre.",               
  :ru => "Сова пытается осмыслить комнату. ",           
  :jp => "アウルはしりたい。"}))
book.add_page(IllustrationPage.new("bat.4",{
  :en => "Bat sees no escape.",                         
  :fr => "Chauve-souris n'en peut plus.",                 
  :ru => "Bat достаточно насмотрелся. ",                
  :jp => "バットはにげない。"}))
book.add_page(IllustrationPage.new("fox.4",{
  :en => "Fox has a visitor.",                          
  :fr => "Renard <grave>a</grave> un visiteur.",                       
  :ru => "У Лиса есть посетитель.",                     
  :jp => "キツネはきゃくがある。"}))


book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(5,{
  :en => "Lesson 5",                                    
  :fr => "Cinqui<grave>e</grave>me Le<cedil>c</cedil>on",                                   
  :ru => "Урок 5",                                     
  :jp => "だい５か"}))
book.add_page(IllustrationPage.new("cat.5",{
  :en => "Cat comes out of the desk",                   
  :fr => "Chat sort du pupitre.",                        
  :ru => "Cat выходит из кошачьего стола ",             
  :jp => "ネコはつくえからをでる。"}))
book.add_page(IllustrationPage.new("owl.5",{
  :en => "Owl understands the room",                    
  :fr => "Hibou a tout compris.",                     
  :ru => "Сова поняла мир! »",                          
  :jp => "アウルすべてわかる。"}))
book.add_page(IllustrationPage.new("bat.5",{
  :en => "Bat awakens.",                                
  :fr => "Chauve-souris se r<aigue>e</aigue>veille.",                   
  :ru => "Летучая мышь пробуждается. ",                 
  :jp => "バットはおきる。"}))
book.add_page(IllustrationPage.new("fox.5",{
  :en => "Fox has a second visitor",                    
  :fr => "Renard <grave>a</grave> un visiteur.",                        
  :ru => "У Фокса еще один посетитель »",               
  :jp => "キツネはにばんめのきゃくがある。"}))


book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(6,{
  :en => "Lesson 6",                                    
  :fr => "Sixi<grave>e</grave>me Le<cedil>c</cedil>on",                                                
  :ru => "Урок 6",                                     
  :jp => "だい６か"}))
book.add_page(IllustrationPage.new("cat.6",{
  :en => "Cat destroys the desk.",                      
  :fr => "Chat d<aigue>e</aigue>truit le pupitre.",                     
  :ru => "Кошка разрушает стол. ",                      
  :jp => "ネコはつくえをこわす。"}))
book.add_page(IllustrationPage.new("owl.6",{
  :en => "Owl finds a scribble.",                       
  :fr => "Hibou n'a rien compris.",                   
  :ru => "Сова находит каракули в столе. ",             
  :jp => "アウルはらくがきをみつける"}))
book.add_page(IllustrationPage.new("bat.6",{
  :en => "Bat finds a pencil.",                         
  :fr => "Chauve-souris trouve un crayon.",              
  :ru => "Бат находит ручку. ",                         
  :jp => "バットはえんぴつをみつける。"}))
book.add_page(IllustrationPage.new("fox.6",{
  :en => "Fox has too many visitors.",                  
  :fr => "Renard a trop de visiteurs.",                  
  :ru => "Фокс слишком много посетителей. ",            
  :jp => "キツネはきゃくがおおい。"}))


book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(7,{
  :en => "Last Lesson",                                 
  :fr => "Derni<grave>e</grave>re Le<cedil>c</cedil>on",                                                
  :ru => "Последней Урок",                                     
  :jp => "さいしゅうか"}))
book.add_page(IllustrationPage.new("you.1",{
  :en => "What would you do?",                          
  :fr => "Que ferais-tu?",                     
  :ru => "Кошка разрушает стол. ",                      
  :jp => "なにするか？"}))

book.add_page(BlankPage.new)
book.add_page(BlankPage.new)

book.build
