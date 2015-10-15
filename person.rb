class Person
attr_reader :name, :books

def initialize(options={})
  @name = options[:name]
  @books = {}
end

def borrow(book)
  books[book.title] = book
end

def giveback(book_title)
  book = books[book_title]
  books.delete(book_title)

  
end



def pretty_string
  if books.size == 1
  "'#{name}' has #{books.size} book borrowed from the library."
  else
  "'#{name}' has #{books.size} books borrowed from the library."
  end
end

end