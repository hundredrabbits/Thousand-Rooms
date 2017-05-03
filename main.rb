#!/bin/env ruby
# encoding: utf-8

require_relative "core/book.rb"
require_relative "core/page.rb"

require_relative 'core/pages/blank.rb'
require_relative 'core/pages/title.rb'
require_relative 'core/pages/illustration.rb'
require_relative 'core/pages/preface.rb'
require_relative 'core/pages/chapter.rb'

$lang = :jp

book = Book.new(                           {:en => "Thousand Rooms",                              :fr => "Milles Pieces",                                   :jp => "",                                :ru => ""})

book.add_page(BlankPage.new)
book.add_page(TitlePage.new)
book.add_page(BlankPage.new)
book.add_page(PrefacePage.new)
book.add_page(ChapterPage.new(             {:en => "The Rules",                                   :fr => "Les Regles",                                      :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("cat.1",{:en => "Cat awakens.",                                :fr => "Le chat se reveille.",                            :jp => "ネコがおきる。",                    :ru => ""}))
book.add_page(IllustrationPage.new("owl.1",{:en => "Owl finds a piece of paper.",                 :fr => "La chouette trouve une feuille.",                 :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("bat.1",{:en => "Bat finds a pen.",                            :fr => "La chauve-souris trouve un crayon.",              :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("fox.1",{:en => "Fox opens the desk.",                         :fr => "Le renard ouvre le pupitre.",                     :jp => "",                                :ru => ""}))

book.add_page(ChapterPage.new(             {:en => "The Experiments",                             :fr => "",                                                :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("cat.2",{:en => "Cat claws at walls.",                         :fr => "Le chat griffe les murs.",                        :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("owl.2",{:en => "Owl leaves a message in the desk.",           :fr => "La chouette laisse un message dans le pupitre.",  :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("bat.2",{:en => "Bat finds a second pen.",                     :fr => "La chauve-souris trouve un autre crayon.",        :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("fox.2",{:en => "Fox dismantles the desk.",                    :fr => "Le renard deconstruit le pupitre.",               :jp => "",                                :ru => ""}))

book.add_page(ChapterPage.new(             {:en => "The Answers",                                 :fr => "",                                                :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("cat.3",{:en => "Cat destroys the pencil and the paper.",      :fr => "Le chat detruit le crayon et le papier.",         :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("owl.3",{:en => "Owl finds notes in the desk",                 :fr => "La chouette trouve une note dans le pupitre.",    :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("bat.3",{:en => "Bat cannot fit any more pens in the desk.",   :fr => "La chauve-souris remplis le pupitre de crayons.", :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("fox.3",{:en => "Fox rebuilts the desk inside-out.",           :fr => "Le renaud reconstruit le pupitre a l'envers.",    :jp => "",                                :ru => ""}))

book.add_page(ChapterPage.new(             {:en => "The Rules",                                   :fr => "",                                                :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("cat.4",{:en => "Cat enters the desk.",                        :fr => "Le chat entre dans le pupitre.",                  :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("owl.4",{:en => "Owl tries to make sense of the room.",        :fr => "La chouette essaie de comprendre.",               :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("bat.4",{:en => "Bat has seen enough.",                        :fr => "La chauve-souris n'en peu plus.",                 :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("fox.4",{:en => "Fox has a visitor.",                          :fr => "Le renaud a un visiteur.",                        :jp => "",                                :ru => ""}))

book.add_page(ChapterPage.new(             {:en => "The Rules",                                   :fr => "",                                                :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("cat.5",{:en => "Cat comes out cat desk",                      :fr => "Le chat sort du pupitre.",                        :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("owl.5",{:en => "Owl has made sense of the world!",            :fr => "La chouette a tout compris.",                     :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("bat.5",{:en => "Bat awakens.",                                :fr => "La chauve-souris se reveille.",                   :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("fox.5",{:en => "Fox has another visitor",                     :fr => "Le renaud a un visiteur.",                        :jp => "",                                :ru => ""}))

book.add_page(ChapterPage.new(             {:en => "The Rules",                                   :fr => "",                                                :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("cat.6",{:en => "Cat destroys desk.",                          :fr => "Le chat detruit le pupitre.",                     :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("owl.6",{:en => "Owl finds a scribble in the desk.",           :fr => "La chouette n'a rien compris.",                   :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("bat.6",{:en => "Bat finds a pen.",                            :fr => "La chauve-souris trouve un crayon.",              :jp => "",                                :ru => ""}))
book.add_page(IllustrationPage.new("fox.6",{:en => "Fox has too many visitors.",                  :fr => "Le renaud a trop de visiteurs.",                  :jp => "",                                :ru => ""}))

book.add_page(BlankPage.new)
book.add_page(BlankPage.new)

book.build


