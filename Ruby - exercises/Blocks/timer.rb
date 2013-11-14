class Timer
	def self.run_code &my_block
		time = Time.now
		my_block.call if block_given?
		Time.now - time
	end
end