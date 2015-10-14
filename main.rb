require 'pry-byebug'


require_relative 'library'
require_relative 'book'
require_relative 'person'

require_relative 'methods'


library = Library.new name: "CodeClan Library"

response = menu

until response == 0

  case response
  when 1
    create_book(library)
  when 2
    # TODO: create_person
  when 3
    # TODO: list all books
  when 4
    # TODO: list all people
  when 5
    # TODO: Lend book
  when 6
    # TODO: return book
  when 7
    # TODO: List of borrowed books
  else 
    puts "Invalid option"
  end

  puts "Press enter to continue"
  gets

  response = menu

end

binding.pry;''