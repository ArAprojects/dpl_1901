require 'pry'

class Author
  attr_reader :first_name, :last_name
  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
    @books = [] #why does the iteration pattern ask for an array? it supposed to be a hash?
  end

  def add_book(title, publication_date)
    #book = {}
    # book = Book.new - how do I create a new book hash with an array...
    #binding.pry how do i get pry to workwork while using rake??
    @books << title
    @books << publication_date
  end

  #I need the above method to take in two arguments as well as the authors first and last
  #name and create a new book object with all of that.



end
