
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
book.add_page(IllustrationPage.new)
book.add_page(IllustrationPage.new)
book.add_page(IllustrationPage.new)
book.add_page(IllustrationPage.new)
book.add_page(IllustrationPage.new)
book.add_page(BlankPage.new)
book.add_page(BlankPage.new)

book.build