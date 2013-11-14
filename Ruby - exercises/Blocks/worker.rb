class Worker
	def self.work n=1, &my_block
		#container=nil
		#n.times{ container=my_block.call if block_given? }
		#container
		n.times.inject(nil) {my_block.call if block_given?}
	end
end