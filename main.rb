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

$lang = :en

title = {:en => "Thousand Rooms", :fr => "Milles Pieces", :ru => "Thousand Rooms", :jp => "Thousand Rooms"}

book = Book.new(title)

book.add_page(CoverPage.new(title))

book.add_page(BlankPage.new)

book.add_page(TitlePage.new({
  :en => ["Thousand Rooms","Pencil, Paper & Desk","Illustrated by Rekka Bellum<br />Written by Devine Lu Linvega"],
  :fr => ["Thousand Rooms","Pencil, Paper & Desk","Rekka Bellum & Devine Lu Linvega"],
  :ru => ["Thousand Rooms","Pencil, Paper & Desk","Rekka Bellum & Devine Lu Linvega"],
  :jp => ["Thousand Rooms","Pencil, Paper & Desk","Rekka Bellum & Devine Lu Linvega"]
}))

book.add_page(BlankPage.new)

book.add_page(PrefacePage.new({
  :en => "You wake up in a room, surrounded by white unbreakable walls. On a desk, lies a pencil and a sheet of blank paper.<br/> Inside the desk, notes bearing your handwritting, you have no recollection.",
  :fr => "",
  :ru => "",
  :jp => ""
}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "I",                                           :fr => "Les Regles",                                      :ru => "Правила",                                     :jp => "ルール"}))
book.add_page(IllustrationPage.new("cat.1",{:en => "Cat awakens.",                                :fr => "Le chat se reveille.",                            :ru => "Кошка пробуждается. ",                        :jp => "猫は目を覚ます。"}))
book.add_page(IllustrationPage.new("owl.1",{:en => "Owl finds a piece of paper.",                 :fr => "La chouette trouve une feuille.",                 :ru => "Сова находит лист бумаги. ",                  :jp => "フクロウは紙を見つけます。"}))
book.add_page(IllustrationPage.new("bat.1",{:en => "Bat finds a pencil.",                         :fr => "La chauve-souris trouve un crayon.",              :ru => "Бат находит ручку. ",                         :jp => "バットはペンを見つける。"}))
book.add_page(IllustrationPage.new("fox.1",{:en => "Fox opens the desk.",                         :fr => "Le renard ouvre le pupitre.",                     :ru => "Фокс открывает стол. ",                       :jp => "フォックスは机を開く。"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "II",                                          :fr => "Les Questions",                                   :ru => "Эксперименты ",                               :jp => "実験"}))
book.add_page(IllustrationPage.new("cat.2",{:en => "Cat claws at walls.",                         :fr => "Le chat griffe les murs.",                        :ru => "Кошачьи когти у стен. ",                      :jp => "壁の猫の爪。"}))
book.add_page(IllustrationPage.new("owl.2",{:en => "Owl leaves a message in the desk.",           :fr => "La chouette laisse un message dans le pupitre.",  :ru => "Сова оставляет сообщение на столе. ",         :jp => "フクロウは机の中にメッセージを残す。"}))
book.add_page(IllustrationPage.new("bat.2",{:en => "Bat finds a second pen.",                     :fr => "La chauve-souris trouve un autre crayon.",        :ru => "Бат находит вторую ручку. ",                  :jp => "バットは2番目のペンを見つける」"}))
book.add_page(IllustrationPage.new("fox.2",{:en => "Fox dismantles the desk.",                    :fr => "Le renard deconstruit le pupitre.",               :ru => "Фокс разбирает стол. ",                       :jp => "フォックスは机を解体する。"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "III",                                         :fr => "Les Reponses",                                    :ru => "Ответы",                                      :jp => "回答"}))
book.add_page(IllustrationPage.new("cat.3",{:en => "Cat destroys the pencil and the paper.",      :fr => "Le chat detruit le crayon et le papier.",         :ru => "Кошка уничтожает карандаш и бумагу. ",        :jp => "猫は鉛筆と紙を壊す。"}))
book.add_page(IllustrationPage.new("owl.3",{:en => "Owl finds notes in the desk",                 :fr => "La chouette trouve une note dans le pupitre.",    :ru => "Сова находит записки на столе »",             :jp => "フクロウは机の上にノートを見つける"}))
book.add_page(IllustrationPage.new("bat.3",{:en => "Bat fills the desk with pens.",               :fr => "La chauve-souris remplis le pupitre de crayons.", :ru => "Бат больше не может вставлять ручки в стол.", :jp => "バットは机の中にもうペンを入れることはできません。"}))
book.add_page(IllustrationPage.new("fox.3",{:en => "Fox builds the desk inside-out.",             :fr => "Le renaud reconstruit le pupitre a l'envers.",    :ru => "Фокс перестраивает стол наизнанку »",         :jp => "フォックスは机を裏返しにしています。"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "IV",                                          :fr => "Les Experiences",                                 :ru => "Правила",                                     :jp => "ルール"}))
book.add_page(IllustrationPage.new("cat.4",{:en => "Cat enters the desk.",                        :fr => "Le chat entre dans le pupitre.",                  :ru => "Кошка входит на стол. ",                      :jp => "猫は机に入る。"}))
book.add_page(IllustrationPage.new("owl.4",{:en => "Owl tries to understand.",                    :fr => "La chouette essaie de comprendre.",               :ru => "Сова пытается осмыслить комнату. ",           :jp => "フクロウは部屋の感覚を作ろうとしています。"}))
book.add_page(IllustrationPage.new("bat.4",{:en => "Bat sees no escape.",                         :fr => "La chauve-souris n'en peu plus.",                 :ru => "Bat достаточно насмотрелся. ",                :jp => "バットは十分に見た。"}))
book.add_page(IllustrationPage.new("fox.4",{:en => "Fox has a visitor.",                          :fr => "Le renaud a un visiteur.",                        :ru => "У Лиса есть посетитель.",                     :jp => "フォックスには訪問者がいます。」"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "V",                                           :fr => "Les Resultats",                                   :ru => "Правила",                                     :jp => "ルール"}))
book.add_page(IllustrationPage.new("cat.5",{:en => "Cat comes out of the desk",                   :fr => "Le chat sort du pupitre.",                        :ru => "Cat выходит из кошачьего стола ",             :jp => "猫は猫の机から出てくる"}))
book.add_page(IllustrationPage.new("owl.5",{:en => "Owl understands the room",                    :fr => "La chouette a tout compris.",                     :ru => "Сова поняла мир! »",                          :jp => "フクロウは世界の感覚を作った！"}))
book.add_page(IllustrationPage.new("bat.5",{:en => "Bat awakens.",                                :fr => "La chauve-souris se reveille.",                   :ru => "Летучая мышь пробуждается. ",                 :jp => "バットは目を覚ます。"}))
book.add_page(IllustrationPage.new("fox.5",{:en => "Fox has a second visitor",                    :fr => "Le renaud a un visiteur.",                        :ru => "У Фокса еще один посетитель »",               :jp => "フォックスは別の訪問者を持っています"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "VI",                                          :fr => "",                                                :ru => "Правила",                                     :jp => "ルール"}))
book.add_page(IllustrationPage.new("cat.6",{:en => "Cat destroys the desk.",                      :fr => "Le chat detruit le pupitre.",                     :ru => "Кошка разрушает стол. ",                      :jp => "猫は机を壊す。"}))
book.add_page(IllustrationPage.new("owl.6",{:en => "Owl finds a scribble.",                       :fr => "La chouette n'a rien compris.",                   :ru => "Сова находит каракули в столе. ",             :jp => "フクロウは机の上で落書きを見つける。"}))
book.add_page(IllustrationPage.new("bat.6",{:en => "Bat finds a pen.",                            :fr => "La chauve-souris trouve un crayon.",              :ru => "Бат находит ручку. ",                         :jp => "バットはペンを見つける。"}))
book.add_page(IllustrationPage.new("fox.6",{:en => "Fox has too many visitors.",                  :fr => "Le renaud a trop de visiteurs.",                  :ru => "Фокс слишком много посетителей. ",            :jp => "フォックスは訪問者が多すぎます。"}))

book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(             {:en => "VII",                                          :fr => "",                                                :ru => "Правила",                                     :jp => "ルール"}))
book.add_page(IllustrationPage.new("you.1",{:en => "",                                             :fr => "Le chat detruit le pupitre.",                     :ru => "Кошка разрушает стол. ",                      :jp => "猫は机を壊す。"}))

book.add_page(BlankPage.new)
book.add_page(BlankPage.new)

book.build

