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

$lang = :fr

title = {:en => "Thousand Rooms", :fr => "Milles Pièces", :ru => "Thousand Rooms", :jp => "Thousand Rooms"}

book = Book.new(title)

book.add_page(CoverPage.new(title))

book.add_page(BlankPage.new)

book.add_page(TitlePage.new({
  :en => [title[:en],"Cat, Owl, Bat & Fox","Illustrated by Rekka Bellum<br />Written by Devine Lu Linvega","First Edition"],
  :fr => [title[:fr],"Pencil, Paper & Desk","Illustrated by Rekka Bellum<br />Written by Devine Lu Linvega","First Edition"],
  :ru => [title[:ru],"Pencil, Paper & Desk","Illustrated by Rekka Bellum<br />Written by Devine Lu Linvega","First Edition"],
  :jp => [title[:jp],"Pencil, Paper & Desk","Illustrated by Rekka Bellum<br />Written by Devine Lu Linvega","First Edition"]
}))

book.add_page(BlankPage.new)

book.add_page(PrefacePage.new({
  :en => "You wake up in a room, surrounded by white unbreakable walls. On a desk, lies a pencil and a sheet of blank paper.<br/> Inside the desk, notes bearing your handwritting, you have no recollection.",
  :fr => "",
  :ru => "",
  :jp => ""
}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "Lesson 1",                                    :fr => "Première Leçon",                                      :ru => "Правила",                                     :jp => "ルール"}))
book.add_page(IllustrationPage.new("cat.1",{:en => "Cat awakens.",                                :fr => "Chat se reveille.",                            :ru => "Кошка пробуждается. ",                        :jp => "猫は目を覚ます。"}))
book.add_page(IllustrationPage.new("owl.1",{:en => "Owl finds a piece of paper.",                 :fr => "Hibou trouve une feuille.",                 :ru => "Сова находит лист бумаги. ",                  :jp => "フクロウは紙を見つけます。"}))
book.add_page(IllustrationPage.new("bat.1",{:en => "Bat finds a pencil.",                         :fr => "Chauve-souris trouve un crayon.",              :ru => "Бат находит ручку. ",                         :jp => "バットはペンを見つける。"}))
book.add_page(IllustrationPage.new("fox.1",{:en => "Fox opens the desk.",                         :fr => "Renard ouvre le pupitre.",                     :ru => "Фокс открывает стол. ",                       :jp => "フォックスは机を開く。"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "Lesson 2",                                    :fr => "Deuxième Leçon",                                   :ru => "Эксперименты ",                               :jp => "実験"}))
book.add_page(IllustrationPage.new("cat.2",{:en => "Cat claws at walls.",                         :fr => "Chat griffe les murs.",                        :ru => "Кошачьи когти у стен. ",                      :jp => "壁の猫の爪。"}))
book.add_page(IllustrationPage.new("owl.2",{:en => "Owl leaves a message in the desk.",           :fr => "Hibou laisse un message dans le pupitre.",  :ru => "Сова оставляет сообщение на столе. ",         :jp => "フクロウは机の中にメッセージを残す。"}))
book.add_page(IllustrationPage.new("bat.2",{:en => "Bat finds a second pencil.",                  :fr => "Chauve-souris trouve un autre crayon.",        :ru => "Бат находит вторую ручку. ",                  :jp => "バットは2番目のペンを見つける」"}))
book.add_page(IllustrationPage.new("fox.2",{:en => "Fox dismantles the desk.",                    :fr => "Renard deconstruit le pupitre.",               :ru => "Фокс разбирает стол. ",                       :jp => "フォックスは机を解体する。"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "Lesson 3",                                    :fr => "Troisième Leçon",                              :ru => "Ответы",                                      :jp => "回答"}))
book.add_page(IllustrationPage.new("cat.3",{:en => "Cat destroys the pencil and the paper.",      :fr => "Chat detruit le crayon et le papier.",         :ru => "Кошка уничтожает карандаш и бумагу. ",        :jp => "猫は鉛筆と紙を壊す。"}))
book.add_page(IllustrationPage.new("owl.3",{:en => "Owl finds notes in the desk",                 :fr => "Hibou trouve une note dans le pupitre.",       :ru => "Сова находит записки на столе »",             :jp => "フクロウは机の上にノートを見つける"}))
book.add_page(IllustrationPage.new("bat.3",{:en => "Bat finds the desk full with pencils.",       :fr => "Chauve-souris trouve plusieur crayons.",       :ru => "Бат больше не может вставлять ручки в стол.", :jp => "バットは机の中にもうペンを入れることはできません。"}))
book.add_page(IllustrationPage.new("fox.3",{:en => "Fox builds the desk inside-out.",             :fr => "Renard reconstruit le pupitre a l'envers.",    :ru => "Фокс перестраивает стол наизнанку »",         :jp => "フォックスは机を裏返しにしています。"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "Lesson 4",                                    :fr => "Quatrième Leçon",                                 :ru => "Правила",                                     :jp => "ルール"}))
book.add_page(IllustrationPage.new("cat.4",{:en => "Cat enters the desk.",                        :fr => "Chat entre dans le pupitre.",                  :ru => "Кошка входит на стол. ",                      :jp => "猫は机に入る。"}))
book.add_page(IllustrationPage.new("owl.4",{:en => "Owl tries to understand.",                    :fr => "Hibou essaie de comprendre.",               :ru => "Сова пытается осмыслить комнату. ",           :jp => "フクロウは部屋の感覚を作ろうとしています。"}))
book.add_page(IllustrationPage.new("bat.4",{:en => "Bat sees no escape.",                         :fr => "Chauve-souris n'en peut plus.",                 :ru => "Bat достаточно насмотрелся. ",                :jp => "バットは十分に見た。"}))
book.add_page(IllustrationPage.new("fox.4",{:en => "Fox has a visitor.",                          :fr => "Renard a un visiteur.",                        :ru => "У Лиса есть посетитель.",                     :jp => "フォックスには訪問者がいます。」"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "Lesson 5",                                    :fr => "Cinquième Leçon",                                   :ru => "Правила",                                     :jp => "ルール"}))
book.add_page(IllustrationPage.new("cat.5",{:en => "Cat comes out of the desk",                   :fr => "Chat sort du pupitre.",                        :ru => "Cat выходит из кошачьего стола ",             :jp => "猫は猫の机から出てくる"}))
book.add_page(IllustrationPage.new("owl.5",{:en => "Owl understands the room",                    :fr => "Hibou a tout compris.",                     :ru => "Сова поняла мир! »",                          :jp => "フクロウは世界の感覚を作った！"}))
book.add_page(IllustrationPage.new("bat.5",{:en => "Bat awakens.",                                :fr => "Chauve-souris se reveille.",                   :ru => "Летучая мышь пробуждается. ",                 :jp => "バットは目を覚ます。"}))
book.add_page(IllustrationPage.new("fox.5",{:en => "Fox has a second visitor",                    :fr => "Renard a un visiteur.",                        :ru => "У Фокса еще один посетитель »",               :jp => "フォックスは別の訪問者を持っています"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "Lesson 6",                                    :fr => "Sixième Leçon",                                                :ru => "Правила",                                     :jp => "ルール"}))
book.add_page(IllustrationPage.new("cat.6",{:en => "Cat destroys the desk.",                      :fr => "Chat detruit le pupitre.",                     :ru => "Кошка разрушает стол. ",                      :jp => "猫は机を壊す。"}))
book.add_page(IllustrationPage.new("owl.6",{:en => "Owl finds a scribble.",                       :fr => "Hibou n'a rien compris.",                   :ru => "Сова находит каракули в столе. ",             :jp => "フクロウは机の上で落書きを見つける。"}))
book.add_page(IllustrationPage.new("bat.6",{:en => "Bat finds a pencil.",                         :fr => "Chauve-souris trouve un crayon.",              :ru => "Бат находит ручку. ",                         :jp => "バットはペンを見つける。"}))
book.add_page(IllustrationPage.new("fox.6",{:en => "Fox has too many visitors.",                  :fr => "Renard a trop de visiteurs.",                  :ru => "Фокс слишком много посетителей. ",            :jp => "フォックスは訪問者が多すぎます。"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "Last Lesson",                                 :fr => "Dernière Leçon",                                                :ru => "Правила",                                     :jp => "ルール"}))
book.add_page(IllustrationPage.new("you.1",{:en => "What would you do?",                          :fr => "Que ferais-tu?",                     :ru => "Кошка разрушает стол. ",                      :jp => "猫は机を壊す。"}))

book.add_page(BlankPage.new)
book.add_page(BlankPage.new)

book.build

