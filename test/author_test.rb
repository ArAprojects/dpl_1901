require './test/test_helper'
require "minitest/autorun"
require "minitest/pride"
require './lib/author'
require './lib/book'
require 'pry'

class AuthorTest < Minitest::Test

  def test_it_exists
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    assert_instance_of Author, nk_jemisin
  end

  def author_has_a_book?
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    assert_equal [], nk_jemisin.books
  end

  def author_has_a_book_now_after_adding_books
    binding.pry
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    assert_equal ["The Fifth Season", "November 3, 2015"], nk_jemisin.book
  end

  def author_has_more_than_one_books
    skip
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    assert_equal
  end
end
