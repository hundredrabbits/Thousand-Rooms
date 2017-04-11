
require_relative "core/book.rb"
require_relative "core/page.rb"

require_relative 'core/pages/blank.rb'
require_relative 'core/pages/title.rb'
require_relative 'core/pages/illustration.rb'

book = Book.new("Thousand Rooms")

book.add_page(BlankPage.new)
book.add_page(TitlePage.new)
book.add_page(BlankPage.new)
book.add_page(IllustrationPage.new("cat.1","Cat awakens."))
book.add_page(IllustrationPage.new("owl.1"))
book.add_page(IllustrationPage.new("bat.1"))
book.add_page(IllustrationPage.new("fox.1"))
book.add_page(IllustrationPage.new("cat.2","Cat awakens."))
book.add_page(IllustrationPage.new("owl.2"))
book.add_page(IllustrationPage.new("bat.2"))
book.add_page(IllustrationPage.new("fox.2"))
book.add_page(IllustrationPage.new("cat.3","Cat awakens."))
book.add_page(IllustrationPage.new("owl.3"))
book.add_page(IllustrationPage.new("bat.3"))
book.add_page(IllustrationPage.new("fox.3"))
book.add_page(IllustrationPage.new("cat.4","Cat awakens."))
book.add_page(IllustrationPage.new("owl.4"))
book.add_page(IllustrationPage.new("bat.4"))
book.add_page(IllustrationPage.new("fox.4"))
book.add_page(BlankPage.new)
book.add_page(BlankPage.new)

book.build