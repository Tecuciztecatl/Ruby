#encoding: utf-8

require './book_helper.rb'
=begin
	must be at the start of the identation the =begin and the =end
	
	multiline constant
	
=end
CONSTEX = "First example"

class Book

CONSTEX = "Example namespaced to class book"

	#class level variables must be instanciated
	@@book_count = 0	#instead of instanciating it here we can instaciate it in the definition
	#use 'self.' instead of 'Book.' to avoid getting errors if you change the class name
	def self.book_count
		@@book_count ||= 0
	end

	#you may use
#self <<
#	def book_count
#	end
#end
	#attributes are not required to be declared, this is just to create the reader and writer methods
	attr_accessor :pages, :title	#this creates the reader/get and writer/set methods
	#attr_reader :pages				#This creates the reader/get method
	#attr_writer :pages				#This creates the writer/set method

	#to make an attr a 'might' just add a default value to it
	#def initialize (pages)
	def initialize pages=0, title="N/A"
		@pages = pages #@ is like using "this."
		@title = title
		@@book_count += 1
	end

	#This methods can be generated automatically by using attr_accessor|attr_reader|attr_writer
		#Last thing evaluated in a method is what is returned
		#def pages
		#	#return @pages
		#	@pages
		#end

		#def pages= pages
		#	#return @pages
		#	@pages = pages
		#end

end
puts "updated"