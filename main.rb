#!/bin/env ruby
# encoding: utf-8

require_relative "core/book.rb"
require_relative "core/page.rb"

require_relative 'core/pages/blank.rb'
require_relative 'core/pages/title.rb'
require_relative 'core/pages/illustration.rb'
require_relative 'core/pages/preface.rb'

book = Book.new("Thousand Rooms")

book.add_page(BlankPage.new)
book.add_page(TitlePage.new)
book.add_page(BlankPage.new)
book.add_page(PrefacePage.new)
book.add_page(IllustrationPage.new("cat.1","Cat awakens."))
book.add_page(IllustrationPage.new("owl.1","Owl finds a piece of paper."))
book.add_page(IllustrationPage.new("bat.1","Bat finds a pen."))
book.add_page(IllustrationPage.new("fox.1","Fox opens the desk."))
book.add_page(IllustrationPage.new("cat.2","Cat is trapped."))
book.add_page(IllustrationPage.new("owl.2","Owl leaves a message in the desk."))
book.add_page(IllustrationPage.new("bat.2","Bat finds a second pen."))
book.add_page(IllustrationPage.new("fox.2","Fox dismantles the desk."))
book.add_page(IllustrationPage.new("cat.3","Cat destroys the pencil and the paper."))
book.add_page(IllustrationPage.new("owl.3","Owl finds notes in the desk"))
book.add_page(IllustrationPage.new("bat.3","Bat finds many pens in the desk."))
book.add_page(IllustrationPage.new("fox.3","Fox rebuilts the desk inside-out."))
book.add_page(IllustrationPage.new("cat.4","Cat destroys the desk."))
book.add_page(IllustrationPage.new("owl.4","Owl tries to make sense of the room."))
book.add_page(IllustrationPage.new("bat.4","Bat makes origami."))
book.add_page(IllustrationPage.new("fox.4","Fox has a visitor."))
book.add_page(IllustrationPage.new("cat.5","Cat enters the desk."))
book.add_page(IllustrationPage.new("owl.5"))
book.add_page(IllustrationPage.new("bat.5","Bat awakens."))
book.add_page(IllustrationPage.new("fox.5"))
book.add_page(IllustrationPage.new("cat.6","Cat comes out of the desk."))
book.add_page(IllustrationPage.new("owl.6"))
book.add_page(IllustrationPage.new("bat.6"))
book.add_page(IllustrationPage.new("fox.6"))
book.add_page(BlankPage.new)
book.add_page(BlankPage.new)

book.build