require 'spec_helper'

describe "UserPages" do
	let(:base_title){"Ruby on Rails Tutorial Sample App"}
	
  describe "signup page" do
	before{visit signup_path}
       	it { page.should have_selector('h1',  text: 'Sign up') }
    	it { page.should have_selector("title", text: "#{base_title} | Home") }
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end
end


