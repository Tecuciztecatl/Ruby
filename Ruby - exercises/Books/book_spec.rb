#encoding: utf-8
require './book.rb'

describe Book do

	context "::book_count" do
		it "Number of books we have created" do
			book = Book.new
			book = Book.new
			Book.book_count.should eq 2
		end
	end

	context "#Pages" do #Book's pages

		#This will create a book variable for each it instance instead of having to create an instance inside each it.
		# The @ is so that it can be accessed inside each it.
		before :each do
			#You can choose not to feed the attributes that are after the the desired attribute
			#You must feed the attributes that are before the desired attribute, even if the have a default value
			@book = Book.new 100
		end

		it "Should have pages" do
			#book = Book.new
			#book.should respond_to "pages"
			@book.should respond_to "pages"
		end

		it "Should have number of pages contained by the book." do
			#book = Book.new 100
			@book.pages.should eq 100

		end

		it "Should allow us to change the number of pages contained by the book." do
			#book = Book.new 100
			@book.pages = 104
			@book.pages.should eq 104

		end

		it "Should have numbers, ex: page number 6" do
			#book = Book.new
			#book.pages.should
			@book.pages.should
		end
	end

	context "#Title" do #Book's Title

		before :each do
			@book = Book.new 0, "The Hobbit"
		end

		it "Should have a Title" do
			@book.should respond_to "title"
		end

	end
end