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
$word_cound = 0

title = {
  :en => "Thousand Rooms",
  :fr => "Mille Pi<grave>e</grave>ces",
  :ru => "Тысяча Комнат",
  :jp => "せんのへや",
  :li => "Lae'Doi",
  :de => "Tausend R<trema>a</trema>ume",
  :it => "Mille stanze",
  :nl => "Duizend Kamers"
}

book = Book.new(title)

book.add_page(CoverPage.new(title))

book.add_page(BlankPage.new)

book.add_page(TitlePage.new({
  :en => [title[:en],"Cat, Owl, Bat & Fox","Illustrated by Rekka Bellum<br />Written by Devine Lu Linvega","First Edition"],
  :fr => [title[:fr],"Chat, Hibou, Chauve-Souris & Renard","Illustr<aigue>e</aigue> par Rekka Bellum<br /><aigue class='cap'>E</aigue>crit par Devine Lu Linvega","Premi<grave>e</grave>re <aigue>E</aigue>dition"],
  :ru => [title[:ru],"Кошка, Сова, Летучая мышь и&nbsp;Лисёнок","Художник Р.&nbsp;Беллум<br />Под редакцией Д.&#8201;Л.&nbsp;Линвеги","Издание первое"],
  :jp => [title[:jp],"ネコ と フクロウ と<br/>コウモリ と キツネ","レッカベラム　絵<br />デルリン　文","初版"],
  :li => [title[:li],"Es el K<trema>a</trema>t J<trema>o</trema>l V<trema>a</trema>t F<trema>o</trema>j ul","R. Bellum'Fita.<br />D. Lu Linvega'Fide","Lady'Al."],
  :de => [title[:de],"Katze, Eule, Fledermaus &&nbsp;Fuchs","Illustriert von Rekka Bellum<br />Geschrieben von Devine Lu Linvega","Erste Edition"],
  :it => [title[:it],"Gatto, Gufo, Pipistrello &&nbsp;Volpe","Illustrato da Rekka Bellum<br />Scritto da Devine Lu Linvega","Prima Edizione"],
  :nl => [title[:du],"Kat, Uil, Vleermuis & Vos","Illustraties door Rekka Bellum<br />Geschreven door Devine Lu Linvega","Eerste Editie"],
}))

book.add_page(BlankPage.new)

book.add_page(PrefacePage.new({
  :en => "You wake up in a room, surrounded by unbreakable walls. On a desk, lies a pencil and a sheet of blank paper.<br/> Inside the desk, notes bearing your handwriting, you have no recollection.",
  :fr => "Vous vous r<aigue>e</aigue>veillez dans une pi<grave>e</grave>ce, entour<aigue>e</aigue> de murs incassables. Sur un pupitre se trouve un crayon et une feuille de papier. Dans le pupitre, une note portant votre <aigue>e</aigue>criture, vous ne vous souvenez de rien.",
  :ru => "Вы&nbsp;проснулись в&nbsp;белой замкнутой комнате. На&nbsp;парте перед вами чистый лист и&nbsp;карандаш. Под&nbsp;крышкой&nbsp;— пачка исписанной вами бумаги, о&nbsp;которой вы&nbsp;ничего не&nbsp;помните.",
  :jp => "きみは　めを　さました。<br/>かたい　かべで　かこまれた<br/>へやの　なかで。<br/>つくえの　うえには、<br/>えんぴつと　かみが　あった。<br/><br/>つくえの　なかには、　じぶんが<br/>かいた　メモが　あった。<br/><br/>なにも　おぼえていない。",
  :li => "Doki el lyfasi es jof<trema>i</trema>l ul'ok ev lari'fori j<trema>a</trema>f. Todeo'ik ev el tofitay es tofatay ul. Todeo'ok ev doety'tado el lari'tado ul. Lari'fadiro'dijo.",
  :de => "Du wachst in einem Raum auf, umgeben von unzerst<trema>o</trema>rbaren W<trema>a</trema>nden. Auf einem Schreibtisch liegen ein Bleistift und ein Blatt Papier.<br/>Im Schreibtisch befinden sich Notizen mit deiner Handschrift, du hast keinerlei Erinnerung daran.",
  # use above if 'you have no recollection' means 'you have no recollection of the notes'
  # if 'you have no recollection' means 'you have no recollection at all, how you came here, what this all is', use:
  # :de => "Du wachst in einem Raum auf, umgeben von unzerst<trema>o</trema>rbaren W<trema>a</trema>nden. Auf einem Schreibtisch liegen ein Bleistift und ein Blatt Papier.<br/>Im Schreibtisch befinden sich Notizen mit deiner Handschrift, du erinnerst dich an nichts."
  :it => "Ti svegli in una stanza, circondata da mura indistruttibili. Su una scrivania ci sono una matita e un foglio di carta.<br/>All'interno della scrivania, alcune note con la tua calligrafia delle quali non ricordi nulla.",
  # use above if 'you have no recollection' means 'you have no recollection of the notes'
  # if 'you have no recollection' means 'you have no recollection at all, how you came here, what this all is', use:
  # :it => "Ti svegli in una stanza, circondata da mura indistruttibili. Su una scrivania ci sono una matita e un foglio di carta.<br/>All'interno della scrivania, alcune note con la tua calligrafia, non ricordi nulla."
  :nl => "Je wordt wakker in een kamer, omringt door onbreekbare muren. Op een bureau, Ligt een potlood en een leeg vel papier.<br/> In het bureau, notities in jouw handschrift, Je kan je niets herinneren.", }))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(1,{
  :en => "Lesson 1",
  :fr => "Premi<grave>e</grave>re Le<cedil>c</cedil>on",
  :ru => "Урок 1",
  :jp => "だい１わ",
  :li => "Doeti'Lyde",
  :de => "Lektion 1",
  :it => "Lezione 1",
  :nl => "Les 1"}))
book.add_page(IllustrationPage.new("cat.1",{
  :en => "Cat awakens.",
  :fr => "Chat se r<aigue>e</aigue>veille.",
  :ru => "Просыпается Кошка.",
  :jp => "ネコは　めを　さました。",
  :li => "K<trema>a</trema>t'fori j<trema>a</trema>f.",
  :de => "Katze wacht auf.",
  :it => "Gatto si sveglia.",
  :nl => "Kat wordt wakker."}))
book.add_page(IllustrationPage.new("owl.1",{
  :en => "Owl finds a piece of paper.",
  :fr => "Hibou trouve une feuille de papier.",
  :ru => "Сова находит лист бумаги.",
  :jp => "フクロウは　かみを<br/>みつけた。",
  :li => "J<trema>o</trema>l'faji tofatay.",
  :de => "Eule findet ein St<trema>u</trema>ck Papier.",
  :it => "Gufo trova un foglio di carta.",
  :nl => "Uil vindt een stuk papier."}))
book.add_page(IllustrationPage.new("bat.1",{
  :en => "Bat finds a pencil.",
  :fr => "Chauve-souris trouve un crayon.",
  :ru => "Летучая мышь находит карандаш.",
  :jp => "コウモリは　えんぴつを<br/>みつけた。",
  :li => "V<trema>a</trema>t'faji tofitay.",
  :de => "Fledermaus findet einen Bleistift.",
  :it => "Pipistrello trova una matita.",
  :nl => "Vleermuis vindt een potlood."}))
book.add_page(IllustrationPage.new("fox.1",{
  :en => "Fox opens the desk.",
  :fr => "Renard ouvre le pupitre",
  :ru => "Лисёнок открывает крышку парты.",
  :jp => "キツネは　つくえを　あけた。",
  :li => "F<trema>o</trema>j'firo todeo.",
  :de => "Fuchs <trema>o</trema>ffnet den Schreibtisch.",
  :it => "Volpe apre la scrivania.",
  :nl => "Vos opent het bureau."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(2,{
  :en => "Lesson 2",
  :fr => "Deuxi<grave>e</grave>me Le<cedil>c</cedil>on",
  :ru => "Урок 2",
  :jp => "だい２わ",
  :li => "Doeti'Il",
  :de => "Lektion 2",
  :it => "Lezione 2",
  :nl => "Les 2."}))
book.add_page(IllustrationPage.new("cat.2",{
  :en => "Cat claws at the walls.",
  :fr => "Chat griffe les murs.",
  :ru => "Кошка точит когти о&nbsp;стены.",
  :jp => "ネコは　かべを　ひっかいた。",
  :li => "K<trema>a</trema>t'fivota jofy.",
  :de => "Katze zerkratzt die W<trema>a</trema>nde.",
  :it => "Gatto graffia i muri.",
  :nl => "Kat krabt de muren."}))
book.add_page(IllustrationPage.new("owl.2",{
  :en => "Owl leaves a message in the desk.",
  :fr => "Hibou laisse un message dans le pupitre.",
  :ru => "Сова оставляет в&nbsp;парте записку.",
  :jp => "フクロウは　つくえに<br/>メモを　のこした。",
  :li => "J<trema>o</trema>l'fiko el todeo'ok ev doety ul.",
  :de => "Eule hinterl<trema>a</trema>sst eine Nachricht im&nbsp;Schreibtisch.",
  :it => "Gufo lascia un messaggio dentro alla scrivania.",
  :nl => "Uil laat een bericht achter in het bureau."}))
book.add_page(IllustrationPage.new("bat.2",{
  :en => "Bat finds a second pencil.",
  :fr => "Chauve-souris trouve un autre crayon.",
  :ru => "Летучая мышь находит ещё&nbsp;карандаш.",
  :jp => "コウモリは　にほんめの<br/>えんぴつを　みつけた。",
  :li => "V<trema>a</trema>t'faji tofitay'il'es.",
  :de => "Fledermaus findet einen zweiten&nbsp;Bleistift.",
  :it => "Pipistrello trova un'altra matita.",
  :nl => "Vleermuis vindt een tweede potlood."}))
book.add_page(IllustrationPage.new("fox.2",{
  :en => "Fox dismantles the desk.",
  :fr => "Renard d<aigue>e</aigue>construit le pupitre.",
  :ru => "Лисёнок разбирает парту.",
  :jp => "キツネは　つくえを<br/>バラバラに　した。",
  :li => "F<trema>o</trema>j'f<trema>i</trema>l todeo.",
  :de => "Fuchs nimmt den Schreibtisch auseinander.",
  :it => "Volpe smonta la scrivania.",
  :nl => "Vos haalt het bureau uit elkaar."}))


book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(3,{
  :en => "Lesson 3",
  :fr => "Troisi<grave>e</grave>me Le<cedil>c</cedil>on",
  :ru => "Урок 3",
  :jp => "だい３わ",
  :li => "Doeti'Lio",
  :de => "Lektion 3",
  :it => "Lezione 3",
  :nl => "Les 3"}))
book.add_page(IllustrationPage.new("cat.3",{
  :en => "Cat destroys the pencil and the paper.",
  :fr => "Chat d<aigue>e</aigue>truit le crayon et la feuille de papier.",
  :ru => "Кошка расправляется с&nbsp;бумагой и&nbsp;карандашом.",
  :jp => "ネコは　えんぴつと　かみを　めちゃくちゃに　した。",
  :li => "K<trema>a</trema>t'filo el tofitay es tofatay ul.",
  :de => "Katze zerst<trema>o</trema>rt den Bleistift und&nbsp;das&nbsp;Papier.",
  :it => "Gatto distrugge la matita e il foglio di carta.",
  :nl => "Kat vernielt het potlood en papier."}))
book.add_page(IllustrationPage.new("owl.3",{
  :en => "Owl finds notes in the desk.",
  :fr => "Hibou trouve une note dans le pupitre.",
  :ru => "Сова находит в&nbsp;парте записи.",
  :jp => "フクロウは　つくえの<br/>なかに　メモを　みつけた。",
  :li => "J<trema>o</trema>l'faji el todeo'ok ev doety ul.",
  :de => "Eule findet Notizen im Schreibtisch.",
  :it => "Gufo trova degli appunti dentro alla scrivania.",
  :nl => "Uil vindt notities in het bureau."}))
book.add_page(IllustrationPage.new("bat.3",{
  :en => "Bat finds the desk full with pencils.",
  :fr => "Chauve-souris trouve plusieurs crayons.",
  :ru => "Летучая мышь обнаружила, что&nbsp;парта набита карандашами.",
  :jp => "コウモリは　つくえの<br/>なかに　えんぴつを<br/>いっぱい　みつけた。",
  :li => "V<trema>a</trema>t'faji el todeo'ok ev tofitay'il ul.",
  :de => "Fledermaus findet viele Bleistifte.",
  # the above translates to "Bat finds many pencils." but this makes more sense in German.
  # "Bat finds the desk full with pencils." would be:
  # :de => "Fledermaus findet den Schreibtisch voll mit Bleistiften."
  :it => "Pipistello trova la scrivania piena di matite.",
  :nl => "Vleermuis vindt het bureau vol met potloden."}))
book.add_page(IllustrationPage.new("fox.3",{
  :en => "Fox builds the desk inside-out.",
  :fr => "Renard reconstruit le pupitre <grave>a</grave> l'envers.",
  :ru => "Лисёнок собирает парту наоборот.",
  :jp => "キツネは　つくえを<br/>うらがえしに　くみたてた。",
  :li => "F<trema>o</trema>j'fito todeo'roi.",
  :de => "Fuchs baut den Schreibtisch verkehrt herum wieder auf.",
  :it => "Volpe ricostruisce la scrivania al rovescio.",
  :nl => "Vos bouwt het bureau binnenste buiten."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(4,{
  :en => "Lesson 4",
  :fr => "Quatri<grave>e</grave>me Le<cedil>c</cedil>on",
  :ru => "Урок 4",
  :jp => "だい４わ",
  :li => "Doeti'Lia",
  :de => "Lektion 4",
  :it => "Lezione 4",
  :nl => "Les 4"}))
book.add_page(IllustrationPage.new("cat.4",{
  :en => "Cat enters the desk.",
  :fr => "Chat entre dans le pupitre.",
  :ru => "Кошка залезает в&nbsp;парту.",
  :jp => "ネコは　つくえに　はいっ た。",
  :li => "K<trema>a</trema>t'foroka todeo.",
  :de => "Katze betritt den Schreibtisch.",
  :it => "Gatto si infila nella scrivania.",
  :nl => "Kat betreedt het bureau."}))
book.add_page(IllustrationPage.new("owl.4",{
  :en => "Owl tries to understand.",
  :fr => "Hibou essaie de comprendre.",
  :ru => "Сова пытается отомкнуть комнату.",
  :jp => "フクロウは　こたえを<br/>さがした。",
  :li => "J<trema>o</trema>l'fati'dij<trema>a</trema>r.",
  :de => "Eule versucht zu verstehen.",
  :it => "Gufo cerca di capire.",
  :nl => "Uil probeert het te begrijpen."}))
book.add_page(IllustrationPage.new("bat.4",{
  :en => "Bat sees no escape.",
  :fr => "Chauve-souris n'en peut plus.",
  :ru => "Летучая мышь не&nbsp;видит выхода.",
  :jp => "コウモリは　あきらめた。",
  :li => "V<trema>a</trema>t'forika'dijo.",
  :de => "Fledermaus gibt auf.",
  # the above translates to "Bat gives up"
  # or you could use:
  # :de => "Fledermaus sieht keine Fluchtm<trema>o</trema>glichkeit."
  # which translates to "Bat sees no possibility of escape"
  # but I think "Bat gives up" is more accurate
  :it => "Pipistrello non vede vie d'uscita.",
  :nl => "Vleermuis ziet geen uitweg."}))
book.add_page(IllustrationPage.new("fox.4",{
  :en => "Fox has a visitor.",
  :fr => "Renard <grave>a</grave> un visiteur.",
  :ru => "У&nbsp;Лисёнка гость.",
  :jp => "キツネの　ところに<br/>ともだちが　きた。",
  :li => "F<trema>o</trema>j'af daku'al'es.",
  :de => "Fuchs hat einen Besucher.",
  :it => "Volpe ha un ospite.",
  :nl => "Vos heeft een bezoeker."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(5,{
  :en => "Lesson 5",
  :fr => "Cinqui<grave>e</grave>me Le<cedil>c</cedil>on",
  :ru => "Урок 5",
  :jp => "だい５わ",
  :li => "Doeti'L<trema>i</trema>",
  :de => "Lektion 5",
  :it => "Lezione 5",
  :nl => "Les 5"}))
book.add_page(IllustrationPage.new("cat.5",{
  :en => "Cat comes out of the desk.",
  :fr => "Chat sort du pupitre.",
  :ru => "Кошка вылезает из&nbsp;парты.",
  :jp => "ネコは　つくえから　でた。",
  :li => "K<trema>a</trema>t'forika todeo.",
  :de => "Katze kommt aus dem Schreibtisch&nbsp;heraus.",
  :it => "Gatto sbuca fuori dalla scrivania.",
  :nl => "Kat komt uit het bureau." }))

book.add_page(IllustrationPage.new("owl.5",{
  :en => "Owl understands the room.",
  :fr => "Hibou a tout compris.",
  :ru => "Сова разгадывает комнату.",
  :jp => "フクロウは　こたえを<br/>みつけた。",
  :li => "J<trema>o</trema>l'fati doki.",
  :de => "Eule versteht den Raum.",
  # use above if owl understands 'the room'
  # use this if owl understands 'everything':
  # :de => "Eule versteht alles."
  :it => "Gufo capisce la stanza.",
  # use above if owl understands 'the room'
  # use this if owl understands 'everything':
  # :it => "Gufo capisce tutto."
  :nl => "Uil begrijpt de kamer."}))
  
book.add_page(IllustrationPage.new("bat.5",{
  :en => "Bat awakens.",
  :fr => "Chauve-souris se r<aigue>e</aigue>veille.",
  :ru => "Летучая мышь просыпается.",
  :jp => "コウモリは　めを　さました。",
  :li => "V<trema>a</trema>t'fori j<trema>a</trema>f.",
  :de => "Fledermaus wacht auf.",
  :it => "Pipistrello si sveglia.",
  :nl => "Vleermuis wordt wakker."}))
book.add_page(IllustrationPage.new("fox.5",{
  :en => "Fox has a second visitor.",
  :fr => "Renard <grave>a</grave> un visiteur.",
  :ru => "У Лисёнка еще&nbsp;один гость.",
  :jp => "キツネの　ところに<br/>もうひとりが　きた。",
  :li => "F<trema>o</trema>j'af daku'il'es.",
  :de => "Fuchs hat einen zweiten Besucher.",
  :it => "Volpe ha un secondo ospite.",
  :nl => "Vos heeft een tweede bezoeker."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(6,{
  :en => "Lesson 6",
  :fr => "Sixi<grave>e</grave>me Le<cedil>c</cedil>on",
  :ru => "Урок 6",
  :jp => "だい６わ",
  :li => "Doeti'Liso",
  :de => "Lektion 6",
  :it => "Lezione 6",
  :nl => "Les 6"}))
book.add_page(IllustrationPage.new("cat.6",{
  :en => "Cat destroys the desk.",
  :fr => "Chat d<aigue>e</aigue>truit le pupitre.",
  :ru => "Кошка расправляется с&nbsp;партой.",
  :jp => "ネコは　つくえを<br/>こわした 。",
  :li => "K<trema>a</trema>t'filo todeo.",
  :de => "Katze zerst<trema>o</trema>rt den Schreibtisch.",
  :it => "Gatto distrugge la scrivania.",
  :nl => "Kat vernietigt het bureau."}))
book.add_page(IllustrationPage.new("owl.6",{
  :en => "Owl finds a scribble.",
  :fr => "Hibou trouve un gribouillage.",
  :ru => "Сова находит какие-то почеркушки.",
  :jp => "フクロウは　らくがきを<br/>みつけた。",
  :li => "J<trema>o</trema>l'faji douty.",
  :de => "Eule findet Gekritzel.",
  :it => "Gufo trova uno scarabocchio.",
  :nl => "Uil vindt een krabbel."}))
book.add_page(IllustrationPage.new("bat.6",{
  :en => "Bat finds a pencil.",
  :fr => "Chauve-souris trouve un crayon.",
  :ru => "Летучая мышь находит карандаш.",
  :jp => "コウモリは　えんぴつを<br/>みつけた。",
  :li => "V<trema>a</trema>t'faji tofitay.",
  :de => "Fledermaus findet einen Bleistift.",
  :it => "Pipistrello trova una matita.",
  :nl => "Vleermuis vindt een potlood."}))
book.add_page(IllustrationPage.new("fox.6",{
  :en => "Fox has too many visitors.",
  :fr => "Renard a trop de visiteurs.",
  :ru => "У&nbsp;лисёнка слишком много гостей.",
  :jp => "キツネの　ところにきた<br/>ともだちが　おおすぎた。",
  :li => "F<trema>o</trema>j'of dulida.",
  :de => "Fuchs hat zu viele Besucher.",
  :it => "Volpe ha troppi ospiti.",
  :nl => "Vos heeft teveel bezoekers."}))

book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(7,{
  :en => "Last Lesson",
  :fr => "Derni<grave>e</grave>re Le<cedil>c</cedil>on",
  :ru => "Последней урок",
  :jp => "さいしゅうわ",
  :li => "Doeti'Lydu",
  :de => "Letzte Lektion",
  :it => "Ultima Lezione",
  :nl => "Laatste Les"}))

book.add_page(BlankPage.new)

book.add_page(IllustrationPage.new("you.1",{
  :en => "What would you do?",
  :fr => "Que ferais-tu?",
  :ru => "Что&nbsp;будете делать?",
  :jp => "きみなら　どうする？",
  :li => "Lari'if jado.",
  :de => "Was w<trema>u</trema>rdest du tun?",
  :it => "Tu cosa faresti?",
  :nl => "Wat zou je doen?"}))

book.add_page(BlankPage.new)

book.add_page(ThankPage.new({
  :en => ["Thanks","Ginger Leigh for her creative feedback, RA for his help with the Russian translation, Chase and Yuka for the japanese translation, Max H<trema>a</trema>ßlein for the german translation and folks in Montreal for imparting their ideas."],
  :fr => ["Merci","Ginger Leigh pour ses commentaires constructifs, RA pour la traduction Russe, et <grave>a</grave> nos amis de Montr<aigue>e</aigue>al pour leurs id<aigue>e</aigue>es."],
  :ru => ["Спасибо","Джинджер Ли&nbsp;за&nbsp;творческий вклад, <span style='letter-spacing:0px'>RA</span>&nbsp;за&nbsp;помощь в&nbsp;переводе на&nbsp;русский, и&nbsp;ребятам из&nbsp;Монреаля за&nbsp;идеи."],
  :jp => ["よんでくれて　ありがとう！"],
  :li => ["Favify!",""],
  :de => ["Vielen Dank","Ginger Leigh f<trema>u</trema>r ihr kreatives Feedback, RA f<trema>u</trema>r seine Hilfe mit der russischen Übersetzung, Chase und Yuka f<trema>u</trema>r die japanische Übersetzung, Max H<trema>a</trema>ß­lein f<trema>u</trema>r die deutsche Übersetzung und unsere Freunde in Montreal f<trema>u</trema>r ihre Ideen."],
  :it => ["Grazie a","Ginger Leigh per i suggerimenti creativi. RA per l'aiuto nella traduzione in russo, Chase and Yuka per la traduzione in giapponese, Max H<trema>a</trema>ßlein per la traduzione in tedesco, Federico Salvador per la traduzione in italiano e gli amici di Montreal per le loro idee."],
  :nl => ["Bedankt","Ginger Leigh voor haar creatieve feedback, RA voor zijn hulp bij de Russische vertaling, Chase en Yuka voor de Japanse vertaling, Max H<trema>a</trema>ßlein voor de Duitse vertaling en de mensen in Montreal voor het delen van hun ideeën."]}))

book.add_page(BlankPage.new)

book.build
