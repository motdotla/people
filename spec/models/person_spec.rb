require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

include PersonTestHelper

describe Person do
  before(:each) do
    empty_database
    @person = Person.new(valid_person_attributes)
  end
  
  it "should be valid when new" do
    @person.should be_valid
  end
  
  it "should not be valid if missing first_name" do
    @person.first_name = ""
    @person.should_not be_valid
  end
  
  it "should not be valid if missing last_name" do
    @person.last_name = ""
    @person.should_not be_valid
  end
end