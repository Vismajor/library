def create_book(library) #why/how the arguments work here
  print "Title:"
  title = gets.chomp

  print "Genre:"
  genre = gets.chomp

  book = Book.new(title: title, genre: genre)

  library.add_book(book)
end

def create_person(library)
  print "Name: "
  name = gets.chomp

  person = Person.new(name: name)

  library.add_person(person)
end

def list_people(library)
  puts library.list_people
end

#ask library to put them out - ask
def list_books(library)
  puts library.list_books
end

def lend_book(library)
  puts library.list_books
  puts
  print "Which book do you want to lend (by name): "
  book_title = gets.chomp

  puts
  puts library.list_people
  print "Which person is going to borrow it (by name): "
  person_name = gets.chomp

  library.lend(person_name, book_title)

end

def return_book(person)
 puts library.list_people
 puts
 print "Which person wants to return a book?"
 person_name = gets.chomp

 puts
 puts "Which book does the person want to return?"
 puts #book_people
 book_title = gets.chomp

 person.return(person_name, book_title)

end

def menu
  puts`clear`
  puts"*** Hard Copy Rental - CodeClan Library ***"


  puts
  puts
  puts "1. Create Book"
  puts "2. Create Person"
  puts "3. List all books"
  puts "4. List all people"
  puts "5. Lend out book"
  puts "6. Return book"
  puts "7. List Borrowed Books"
  puts 
  puts "0. Quit"
  puts
  print "-->"
  gets.to_i


end