require 'spec_helper'

describe Student do

	before :each do
		@student=Student.new
	end

	it "should require a student name" do
		@student.should_not be_valid
	end

	it "should have a student name" do
		@student.full_name="Name_HERE"
		@student.full_name.should_not be nil
	end

	it "should have a student name capitlized" do
		@student.full_name="Name_HERE"
		@student.email="email_HERE"
		@student.should be_valid
	end

	it "should have an email" do
		@student.full_name="Name_HERE"
		@student.email="email_HERE"
		@student.should be_valid
	end

  pending "add some examples to (or delete) #{__FILE__}"
end
