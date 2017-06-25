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
require_relative 'lang.hu.rb'
require_relative 'lang.es.rb'
require_relative 'lang.pt.rb'
require_relative 'lang.pl.rb'

content = {}
content[:en] = $lang_en
content[:fr] = $lang_fr
content[:ru] = $lang_ru
content[:jp] = $lang_jp
content[:li] = $lang_li
content[:de] = $lang_de
content[:it] = $lang_it
content[:nl] = $lang_nl
content[:el] = $lang_el
content[:ch] = $lang_ch
content[:ar] = $lang_ar
content[:hu] = $lang_hu
content[:es] = $lang_es
content[:pt] = $lang_pt
content[:pl] = $lang_pl

book = Book.new(content)
book.build