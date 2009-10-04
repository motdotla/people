require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

include PersonTestHelper

# ===============
# /people
# ===============
describe "/people" do
  describe "GET" do
    before(:each) do
      visit "/people"
    end
    
    it "should respond successfully" do
      response.status.should eql('200 OK')
    end
  end
end

# ===============
# /people/new
# ===============
describe "/peope/new" do
  describe "GET" do
    before(:each) do
      visit "/people/new"
    end
    
    it "should respond successfully" do
      response.status.should eql('200 OK')
    end
    
    it "should have the new person form" do
      response.should have_selector("form[action='/people']")
    end

    it "should have a first_name field" do
      response.should have_selector("input[id='person_first_name']")
      response.should have_selector("input[name='person[first_name]']")
    end
    
    it "should have a last_name field" do
      response.should have_selector("input[id='person_last_name']")
      response.should have_selector("input[name='person[last_name]']")
    end
  end
end