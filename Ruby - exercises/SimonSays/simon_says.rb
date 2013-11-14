#encoding: utf-8
module SimonSays
	def echo thing
		String.try_convert(thing)
	end

	def shout thing
		String.try_convert(thing).upcase
	end

	def repeat thing, n=2
		var=String.try_convert(thing)
		var+=" "
		(var*n).chop
	end

	def start_of_word thing, n=1
		#Both do the same
		#String.try_convert(thing).slice(0,n)
		String.try_convert(thing)[0,n]		#This will return the frist n letters. Ex: "123456"[0,2] => "12"
		#String.try_convert(thing)[0..n]	This will return the first n letters starting in 0. Ex: "123456"[0..2] => Will return "123"
	end

	def first_word thing
		#Both do the same
		#String.try_convert(thing).split[0]
		String.try_convert(thing).split.first
	end
end