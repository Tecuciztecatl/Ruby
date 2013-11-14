require 'spec_helper'

describe Student do

  before :each do
    @student = Student.new
  end

  it "should have require a name" do
    @student.should_not be_valid 
  end

  it "should require names to be capitalized" do
    @student.full_name = 'test'
    @student.should_not be_valid
  end

  it "should require an email" do
    @student.full_name = 'test'
    @student.should_not be_valid
  end

  it "should require a valid email" do
    @student.full_name = "Test"
    @student.email = "t"
    @student.should_not be_valid
  end

end
