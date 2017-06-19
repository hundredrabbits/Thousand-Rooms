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

require_relative 'lang.en.rb'
require_relative 'lang.fr.rb'
require_relative 'lang.ru.rb'
require_relative 'lang.jp.rb'
require_relative 'lang.li.rb'
require_relative 'lang.de.rb'
require_relative 'lang.it.rb'
require_relative 'lang.nl.rb'
require_relative 'lang.el.rb'
require_relative 'lang.ch.rb'
require_relative 'lang.ar.rb'

$lang = ARGV.first.to_sym ? ARGV.first.to_sym : :en
$word_cound = 0

$story = {}
$story[:en] = $lang_en
$story[:fr] = $lang_fr
$story[:ru] = $lang_ru
$story[:jp] = $lang_jp
$story[:li] = $lang_li
$story[:de] = $lang_de
$story[:it] = $lang_it
$story[:nl] = $lang_nl
$story[:el] = $lang_el
$story[:ch] = $lang_ch
$story[:ar] = $lang_ar

target_story = $story[$lang]

book = Book.new(target_story[:title])
book.add_page(CoverPage.new(target_story[:title]))
book.add_page(BlankPage.new)
book.add_page(TitlePage.new(target_story[:title_page]))
book.add_page(BlankPage.new)
book.add_page(PrefacePage.new(target_story[:preface]))
book.add_page(BlankPage.new)
book.add_page(ChapterPage.new(1,target_story[:lesson1][0]))
book.add_page(IllustrationPage.new("cat.1",target_story[:lesson1][1]))
book.add_page(IllustrationPage.new("owl.1",target_story[:lesson1][2]))
book.add_page(IllustrationPage.new("bat.1",target_story[:lesson1][3]))
book.add_page(IllustrationPage.new("fox.1",target_story[:lesson1][4]))
book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(2,target_story[:lesson2][0]))
book.add_page(IllustrationPage.new("cat.2",target_story[:lesson2][1]))
book.add_page(IllustrationPage.new("owl.2",target_story[:lesson2][2]))
book.add_page(IllustrationPage.new("bat.2",target_story[:lesson2][3]))
book.add_page(IllustrationPage.new("fox.2",target_story[:lesson2][4]))
book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(3,target_story[:lesson3][0]))
book.add_page(IllustrationPage.new("cat.3",target_story[:lesson3][1]))
book.add_page(IllustrationPage.new("owl.3",target_story[:lesson3][2]))
book.add_page(IllustrationPage.new("bat.3",target_story[:lesson3][3]))
book.add_page(IllustrationPage.new("fox.3",target_story[:lesson3][4]))
book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(4,target_story[:lesson4][0]))
book.add_page(IllustrationPage.new("cat.4",target_story[:lesson4][1]))
book.add_page(IllustrationPage.new("owl.4",target_story[:lesson4][2]))
book.add_page(IllustrationPage.new("bat.4",target_story[:lesson4][3]))
book.add_page(IllustrationPage.new("fox.4",target_story[:lesson4][4]))
book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(5,target_story[:lesson5][0]))
book.add_page(IllustrationPage.new("cat.5",target_story[:lesson5][1]))
book.add_page(IllustrationPage.new("owl.5",target_story[:lesson5][2]))
book.add_page(IllustrationPage.new("bat.5",target_story[:lesson5][3]))
book.add_page(IllustrationPage.new("fox.5",target_story[:lesson5][4]))
book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(6,target_story[:lesson6][0]))
book.add_page(IllustrationPage.new("cat.6",target_story[:lesson6][1]))
book.add_page(IllustrationPage.new("owl.6",target_story[:lesson6][2]))
book.add_page(IllustrationPage.new("bat.6",target_story[:lesson6][3]))
book.add_page(IllustrationPage.new("fox.6",target_story[:lesson6][4]))
book.add_page(BlankPage.new)

book.add_page(ChapterPage.new(7,target_story[:lesson7][0]))
book.add_page(BlankPage.new)
book.add_page(IllustrationPage.new("you.1",target_story[:lesson7][1]))
book.add_page(BlankPage.new)

book.add_page(ThankPage.new(target_story[:thanks]))
book.add_page(BlankPage.new)

book.build
