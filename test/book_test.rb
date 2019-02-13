require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'

class BookTest < Minitest::Test

  def test_it_exists
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_instance_of Book, book
  end

  def test_it_has_a_first_name
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_equal "Harper", book.author_first_name

  def test_it_has_a_last_name
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_equal "lee", book.author_last_name
  end

  def test_it_has_a_title
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_equal "To Kill a Mockingbird", book.publication_date
  end

  def test_it_has_a_publication_date
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_equal "July 11th 1960", book.publication_date
  end
end
end
