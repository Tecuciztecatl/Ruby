module PigLatinTranslator

	def translate phrase
		words = phrase.split ' '
		#puts words
		p = ""
		words.each do |w|
			if w.match /^[q|Q][u|U]/
				parted = w.partition(/^[q|Q][u|U]/)
				parted.delete_at 0
				parted[0], parted[1] = parted[1], parted[0]
				w=parted.join
				p+=(w+"ay ")
			elsif w.match /^[^aeiou]+/
				parted = w.partition(/^[^aeiou]+/)
				parted.delete_at 0
				parted[0], parted[1] = parted[1], parted[0]
				w=parted.join
				p+=(w+"ay ")
			else
				p = w+"ay "
			end
		end
		p.chomp " "
	end
end