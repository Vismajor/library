def create_book(library) #why/how the arguments work here
  print "Title:"
  title = gets.chomp

  print "Genre:"
  genre = gets.chomp

  book = Book.new(title: title, genre: genre)

  library.add_book(book)
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