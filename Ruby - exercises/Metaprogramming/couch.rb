class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end


	[:pillows, :cushions].each do |s|
		define_method("#{s}_count") do
			instance_variable_get("@#{s}").count
		end
		#puts "#{self}"
		define_method("#{s}_colors") do
			instance_variable_get("@#{s}").join(' ')
		end

		#get/reader
		define_method("#{s}") do
			instance_variable_get("@#{s}")
		end
		#some holy testing
		define_method("#{s}_set") do
			instance_variable_set("@#{s}", ["red","blue"])
		end
		#set/writer
		define_method("#{s}=") do |param|
			instance_variable_set("@#{s}", param)
		end
	end

	def to_str
		"I am a Couch"
	end

	def respond_to?(meth)
		true
	end

	def method_missing(meth, *args, &block)
		puts "You called #{meth} with #{args.join(' ')}"
		#puts "#{self}"
#		self.class.class_eval do
#			define_method(meth) do |*args, &blocked|
#				puts args
#				puts blocked.call if block_given?
#			end
#		end
		self.class.class_eval(
	"
			def #{meth}(*args, &block)
				puts args
				puts block.call if block_given?
			end
	")
		self.send(meth, args) {block.call if block_given?}
	end
end

couch = Couch.new ["green","yellow"], ["black","orange"]
puts couch.pillows_count
puts couch.pillows_colors
couch.pillows_set
print couch.pillows
print couch.pillows_HOPEFUL("clash of titans"){1+1}
print couch.pillows_HOPEFUL("clash of terrors"){2+2}
print couch.pillows_HOPEFUL("clash of craps")
print couch.pillows_HOPEFULLY{1+1}
print couch.pillows_HOPEFULLY("something"){1+4}