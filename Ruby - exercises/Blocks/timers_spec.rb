require './timer.rb'

describe Timer do
	
	it "Should run our code" do
		flag = false
		#it is the same thing, done differently
#		Timer.run_code do
#			flag = true
#		end
		Timer.run_code { flag = true }
		flag.should eq true
	end

	it "Should time our code execution" do
		Time.stub(:now).and_return(0,3)
		time = Timer.run_code { }#sleep 3; nil }
		time.should be_within(0.1).of(3.0)
	end

end