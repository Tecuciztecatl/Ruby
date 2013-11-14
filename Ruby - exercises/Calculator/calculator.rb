class Calculator

	#@@num_calculators = 0

	def self.num_calculators
		@@num_calculators ||= 0
	end
	def self.num_calculators= n=0
		@@num_calculators = n
	end

	attr_accessor :name
	attr_reader :num_calculations

	def initialize name="no name"
		@name = name
		@num_calculations = 0
		@@num_calculators ||= 0
		@@num_calculators += 1
		#it is the same as:
		#Calculator.num_calculators += 1
	end

	def sum *args
		@num_calculations+=1
		args=args.flatten
		#sum = 0
		#args.each {|x| sum+=x}
		#sum
		#args.inject(0,:+)
		args.inject(0){|sum, x| sum+x}
	end

	def multiply *args
		@num_calculations+=1
		args=args.flatten
		#mult = 1
		#args.each {|x| mult=mult*x}
		args.inject(1,:*)
		#mult
	end

	def pow base, exp
		@num_calculations+=1
		base**exp
	end

	def fac n
		@num_calculations+=1
		return 1 if (n.zero?)
		@num_calculations-=1
		multiply (1..n).to_a
	end

end