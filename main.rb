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
require_relative 'core/pages/thank.rb'

$lang = ARGV.first.to_sym ? ARGV.first.to_sym : :en

title = {
  :en => "Thousand Rooms", 
  :fr => "Mille Pi<grave>e</grave>ces", 
  :ru => "Тысяча Комнат", 
  :jp => "せんのへや",
  :li => "Lae'Doi"
}

book = Book.new(title)

book.add_page(CoverPage.new(title))

book.add_page(BlankPage.new)

book.add_page(TitlePage.new({
  :en => [title[:en],"Cat, Owl, Bat & Fox","Illustrated by Rekka Bellum<br />Written by Devine Lu Linvega","First Edition"],
  :fr => [title[:fr],"Chat, Hibou, Chauve-Souris & Renard","Illustr<aigue>e</aigue> par Rekka Bellum<br /><aigue class='cap'>E</aigue>crit par Devine Lu Linvega","Premi<grave>e</grave>re <aigue>E</aigue>dition"],
  :ru => [title[:ru],"Кошка, Сова, Летучая мышь и&nbsp;Лисёнок","Художник Р.&nbsp;Беллум<br />Под редакцией Д.&#8201;Л.&nbsp;Линвеги","Издание первое"],
  :jp => [title[:jp],"ネコ と フクロウ と<br/>コウモリ と キツネ","レッカベラム　絵<br />デルリン　文","初版"],
  :li => [title[:li],"Es el K<trema>a</trema>t J<trema>o</trema>l V<trema>a</trema>t F<trema>o</trema>j ul","R. Bellum'Fita.<br />D. Lu Linvega'Fide","Lady'Al."]
}))

book.add_page(BlankPage.new)

book.add_page(PrefacePage.new({
  :en => "You wake up in a room, surrounded by unbreakable walls. On a desk, lies a pencil and a sheet of blank paper.<br/> Inside the desk, notes bearing your handwriting, you have no recollection.",
  :fr => "Vous vous r<aigue>e</aigue>veillez dans une pi<grave>e</grave>ce, entour<aigue>e</aigue> de murs incassables. Sur un pupitre se trouve un crayon et une feuille de papier. Dans le pupitre, une note portant votre <aigue>e</aigue>criture, vous ne vous souvenez de rien.",
  :ru => "Вы&nbsp;проснулись в&nbsp;белой замкнутой комнате. На&nbsp;парте перед вами чистый лист и&nbsp;карандаш. Под&nbsp;крышкой&nbsp;— пачка исписанной вами бумаги, о&nbsp;которой вы&nbsp;ничего не&nbsp;помните.",
  :jp => "きみは　めを　さました。<br/>かたい　かべで　かこまれた<br/>へやの　なかで。<br/>つくえの　うえには、<br/>えんぴつと　かみが　あった。<br/><br/>つくえの　なかには、　じぶんが<br/>かいた　メモが　あった。<br/><br/>なにも　おぼえていない。",
  :li => "Doki el lyfasi es jof<trema>i</trema>l ul'ok ev lari'fori j<trema>a</trema>f. Todeo'ik ev el tofitay es tofatay ul. Todeo'ok ev doety'tado el lari'tado ul. Lari'fadiro'dijo."
}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(1,{
  :en => "Lesson 1",                                    
  :fr => "Premi<grave>e</grave>re Le<cedil>c</cedil>on",                                      
  :ru => "Урок 1",                                     
  :jp => "だい１わ",
  :li => "Doeti'Lyde"}))
book.add_page(IllustrationPage.new("cat.1",{
  :en => "Cat awakens.",                                
  :fr => "Chat se r<aigue>e</aigue>veille.",                            
  :ru => "Просыпается Кошка.",                        
  :jp => "ネコは　めを　さました。",
  :li => "K<trema>a</trema>t'fori j<trema>a</trema>f."}))
book.add_page(IllustrationPage.new("owl.1",{
  :en => "Owl finds a piece of paper.",                 
  :fr => "Hibou trouve une feuille de papier.",                 
  :ru => "Сова находит лист бумаги.",                  
  :jp => "フクロウは　かみを<br/>みつけた。",
  :li => "J<trema>o</trema>l'faji tofatay."}))
book.add_page(IllustrationPage.new("bat.1",{
  :en => "Bat finds a pencil.",                         
  :fr => "Chauve-souris trouve un crayon.",              
  :ru => "Летучая мышь находит карандаш.",                         
  :jp => "コウモリは　えんぴつを<br/>みつけた。",
  :li => "V<trema>a</trema>t'faji tofitay."}))
book.add_page(IllustrationPage.new("fox.1",{
  :en => "Fox opens the desk.",                         
  :fr => "Renard ouvre le pupitre",                     
  :ru => "Лисёнок открывает крышку парты.",                       
  :jp => "キツネは　つくえを　あけた。",
  :li => "F<trema>o</trema>j'firo todeo."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(2,{
  :en => "Lesson 2",                                    
  :fr => "Deuxi<grave>e</grave>me Le<cedil>c</cedil>on",                                   
  :ru => "Урок 2",                               
  :jp => "だい２わ",
  :li => "Doeti'Il"}))
book.add_page(IllustrationPage.new("cat.2",{
  :en => "Cat claws at the walls.",                         
  :fr => "Chat griffe les murs.",                        
  :ru => "Кошка точит когти о&nbsp;стены.",                      
  :jp => "ネコは　かべを　ひっかいた。",
  :li => "K<trema>a</trema>t'fivota jofy."}))
book.add_page(IllustrationPage.new("owl.2",{
  :en => "Owl leaves a message in the desk.",           
  :fr => "Hibou laisse un message dans le pupitre.",  
  :ru => "Сова оставляет в&nbsp;парте записку.",         
  :jp => "フクロウは　つくえに<br/>メモを　のこした。",
  :li => "J<trema>o</trema>l'fiko el todeo'ok ev doety ul."}))
book.add_page(IllustrationPage.new("bat.2",{
  :en => "Bat finds a second pencil.",                  
  :fr => "Chauve-souris trouve un autre crayon.",        
  :ru => "Летучая мышь находит ещё&nbsp;карандаш.",                  
  :jp => "コウモリは　にほんめの<br/>えんぴつを　みつけた。",
  :li => "V<trema>a</trema>t'faji tofitay'il'es."}))
book.add_page(IllustrationPage.new("fox.2",{
  :en => "Fox dismantles the desk.",                    
  :fr => "Renard d<aigue>e</aigue>construit le pupitre.",               
  :ru => "Лисёнок разбирает парту.",                       
  :jp => "キツネは　つくえを<br/>バラバラに　した。",
  :li => "F<trema>o</trema>j'f<trema>i</trema>l todeo."}))


book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(3,{
  :en => "Lesson 3",                                    
  :fr => "Troisi<grave>e</grave>me Le<cedil>c</cedil>on",                              
  :ru => "Урок 3",                                      
  :jp => "だい３わ",
  :li => "Doeti'Lio"}))
book.add_page(IllustrationPage.new("cat.3",{
  :en => "Cat destroys the pencil and the paper.",      
  :fr => "Chat d<aigue>e</aigue>truit le crayon et la feuille de papier.",         
  :ru => "Кошка расправляется с&nbsp;бумагой и&nbsp;карандашом.",        
  :jp => "ネコは　えんぴつと　かみを　めちゃくちゃに　した。",
  :li => "K<trema>a</trema>t'filo el tofitay es tofatay ul."}))
book.add_page(IllustrationPage.new("owl.3",{
  :en => "Owl finds notes in the desk.",                 
  :fr => "Hibou trouve une note dans le pupitre.",       
  :ru => "Сова находит в&nbsp;парте записи.",             
  :jp => "フクロウは　つくえの<br/>なかに　メモを　みつけた。",
  :li => "J<trema>o</trema>l'faji el todeo'ok ev doety ul."}))
book.add_page(IllustrationPage.new("bat.3",{
  :en => "Bat finds the desk full with pencils.",       
  :fr => "Chauve-souris trouve plusieurs crayons.",       
  :ru => "Летучая мышь обнаружила, что&nbsp;парта набита карандашами.", 
  :jp => "コウモリは　つくえの<br/>なかに　えんぴつを<br/>いっぱい　みつけた。",
  :li => "V<trema>a</trema>t'faji el todeo'ok ev tofitay'il ul."}))
book.add_page(IllustrationPage.new("fox.3",{
  :en => "Fox builds the desk inside-out.",             
  :fr => "Renard reconstruit le pupitre <grave>a</grave> l'envers.",    
  :ru => "Лисёнок собирает парту наоборот.",         
  :jp => "キツネは　つくえを<br/>うらがえしに　くみたてた。",
  :li => "F<trema>o</trema>j'fito todeo'roi."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(4,{
  :en => "Lesson 4",                                    
  :fr => "Quatri<grave>e</grave>me Le<cedil>c</cedil>on",                                 
  :ru => "Урок 4",                                     
  :jp => "だい４わ",
  :li => "Doeti'Lia"}))
book.add_page(IllustrationPage.new("cat.4",{
  :en => "Cat enters the desk.",                        
  :fr => "Chat entre dans le pupitre.",                  
  :ru => "Кошка залезает в&nbsp;парту.",                      
  :jp => "ネコは　つくえに　はいっ た。",
  :li => "K<trema>a</trema>t'foroka todeo."}))
book.add_page(IllustrationPage.new("owl.4",{
  :en => "Owl tries to understand.",                    
  :fr => "Hibou essaie de comprendre.",               
  :ru => "Сова пытается отомкнуть комнату.",           
  :jp => "フクロウは　こたえを<br/>さがした。",
  :li => "J<trema>o</trema>l'fati'dij<trema>a</trema>r."}))
book.add_page(IllustrationPage.new("bat.4",{
  :en => "Bat sees no escape.",                         
  :fr => "Chauve-souris n'en peut plus.",                 
  :ru => "Летучая мышь не&nbsp;видит выхода.",                
  :jp => "コウモリは　あきらめた。",
  :li => "V<trema>a</trema>t'forika'dijo."}))
book.add_page(IllustrationPage.new("fox.4",{
  :en => "Fox has a visitor.",                          
  :fr => "Renard <grave>a</grave> un visiteur.",                       
  :ru => "У&nbsp;Лисёнка гость.",                     
  :jp => "キツネの　ところに<br/>ともだちが　きた。",
  :li => "F<trema>o</trema>j'af daku'al'es."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(5,{
  :en => "Lesson 5",                                    
  :fr => "Cinqui<grave>e</grave>me Le<cedil>c</cedil>on",                                   
  :ru => "Урок 5",                                     
  :jp => "だい５わ",
  :li => "Doeti'L<trema>i</trema>"}))
book.add_page(IllustrationPage.new("cat.5",{
  :en => "Cat comes out of the desk.",                   
  :fr => "Chat sort du pupitre.",                        
  :ru => "Кошка вылезает из&nbsp;парты.",             
  :jp => "ネコは　つくえから　でた。",
  :li => "K<trema>a</trema>t'forika todeo."}))
book.add_page(IllustrationPage.new("owl.5",{
  :en => "Owl understands the room.",                    
  :fr => "Hibou a tout compris.",                     
  :ru => "Сова разгадывает комнату.",                          
  :jp => "フクロウは　こたえを<br/>みつけた。",
  :li => "J<trema>o</trema>l'fati doki."}))
book.add_page(IllustrationPage.new("bat.5",{
  :en => "Bat awakens.",                                
  :fr => "Chauve-souris se r<aigue>e</aigue>veille.",                   
  :ru => "Летучая мышь просыпается.",                 
  :jp => "コウモリは　めを　さました。",
  :li => "V<trema>a</trema>t'fori j<trema>a</trema>f."}))
book.add_page(IllustrationPage.new("fox.5",{
  :en => "Fox has a second visitor.",                    
  :fr => "Renard <grave>a</grave> un visiteur.",                        
  :ru => "У Лисёнка еще&nbsp;один гость.",               
  :jp => "キツネの　ところに<br/>もうひとりが　きた。",
  :li => "F<trema>o</trema>j'af daku'il'es."}))


book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(6,{
  :en => "Lesson 6",                                    
  :fr => "Sixi<grave>e</grave>me Le<cedil>c</cedil>on",                                                
  :ru => "Урок 6",                                     
  :jp => "だい６わ",
  :li => "Doeti'Liso"}))
book.add_page(IllustrationPage.new("cat.6",{
  :en => "Cat destroys the desk.",                      
  :fr => "Chat d<aigue>e</aigue>truit le pupitre.",                     
  :ru => "Кошка расправляется с&nbsp;партой.",                      
  :jp => "ネコは　つくえを<br/>こわした 。",
  :li => "K<trema>a</trema>t'filo todeo."}))
book.add_page(IllustrationPage.new("owl.6",{
  :en => "Owl finds a scribble.",                       
  :fr => "Hibou trouve un gribouillage.",                   
  :ru => "Сова находит какие-то почеркушки.",             
  :jp => "フクロウは　らくがきを<br/>みつけた。",
  :li => "J<trema>o</trema>l'faji douty."}))
book.add_page(IllustrationPage.new("bat.6",{
  :en => "Bat finds a pencil.",                         
  :fr => "Chauve-souris trouve un crayon.",              
  :ru => "Летучая мышь находит карандаш.",                         
  :jp => "コウモリは　えんぴつを<br/>みつけた。",
  :li => "V<trema>a</trema>t'faji tofitay."}))
book.add_page(IllustrationPage.new("fox.6",{
  :en => "Fox has too many visitors.",                  
  :fr => "Renard a trop de visiteurs.",                  
  :ru => "У&nbsp;лисёнка слишком много гостей.",            
  :jp => "キツネの　ところにきた<br/>ともだちが　おおすぎた。",
  :li => "F<trema>o</trema>j'of dulida."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(7,{
  :en => "Last Lesson",                                 
  :fr => "Derni<grave>e</grave>re Le<cedil>c</cedil>on",                                                
  :ru => "Последней урок",                                     
  :jp => "さいしゅうわ",
  :li => "Doeti'Lydu"}))

book.add_page(BlankPage.new)

book.add_page(IllustrationPage.new("you.1",{
  :en => "What would you do?",                          
  :fr => "Que ferais-tu?",                     
  :ru => "Что&nbsp;будете делать?",                      
  :jp => "きみなら　どうする？",
  :li => "Lari'if jado."}))

book.add_page(BlankPage.new)

book.add_page(ThankPage.new({
  :en => ["Thanks","Ginger Leigh for her creative feedback, RA for his help with the Russian translation, Chase and Yuka for the japanese translation, and folks in Montreal for imparting their ideas."],
  :fr => ["Merci","Ginger Leigh pour ses commentaires constructifs, RA pour la traduction Russe, et <grave>a</grave> nos amis de Montr<aigue>e</aigue>al pour leurs id<aigue>e</aigue>es."],
  :ru => ["Спасибо","Джинджер Ли&nbsp;за&nbsp;творческий вклад, RA&nbsp;за&nbsp;помощь в&nbsp;переводе на&nbsp;русский, и&nbsp;ребятам из&nbsp;Монреаля за&nbsp;идеи."],
  :jp => ["よんでくれて　ありがとう！"],
  :li => ["Favify!",""]}))

book.add_page(BlankPage.new)

book.build
