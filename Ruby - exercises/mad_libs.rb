#encoding: utf-8

print "please give me a noun: "
noun = gets.chomp
puts "please give me a past tense verb:"
verb = gets.chomp
my_var = "noun = #{noun}; verb=#{verb}"
puts my_var
print my_var
puts "#{my_var}"
print "give me a number!"
number = gets.chomp
print number.to_f	#converts the number to float