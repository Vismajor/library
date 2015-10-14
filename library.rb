class Library

  attr_reader :name, :books, :people

  def initialize(options={})
    @name = options[:name]
    @books = {}
    @people = {}
  end

def lend(person_name, book_title)
  person = people[person_name]
  book = books.delete(book_title)

  person.borrow(book)
end



def receive(person_name, book_title)
  person = people[person_name]
  books
  person.giveback(book_title)
end


def add_book(book)
  books[book.title] = book
end

def add_person(person)
  people[person.name] = person
end

def list_people
  if people.empty?
    "Naah, noone's 'ere"
  else
    people.map { |key, person| person.pretty_string }.join("\n") #ask about the key/person
  end
end

def list_books
  if books.empty?
    "Soz, no books here"
  else
    books.map { |key, book| book.pretty_string }.join("\n") #ask about the do
  end
end 
end
