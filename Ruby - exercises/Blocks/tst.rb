def echo string=nil, &my_block
	puts my_block.call if block_given?
	puts yield if block_given?
	puts string if string != nil
end

echo{ "hiho" }

echo "something"

my_block = lambda { puts "lambda"}
my_block.call

def doer
	yield
end

i =0
doer{i+=1}
echo i
doer{i+=1}
echo i
echo doer{i+=1}
echo i