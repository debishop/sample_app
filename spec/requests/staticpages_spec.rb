require 'spec_helper'

describe "Staticpages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/home'
      page.should have_content ('Sample App')

    end

    it "should have the h1 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/home'
      
      page.should have_selector('h1',  text: 'Sample App')
    end

  it "should have the title 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/home'
      page.should have_selector('title', text: 'Ruby on Rails Tutorial Sample App | Home')
    end
  end

 describe 'Help page' do
  	it "should have the content 'help'" do
  		visit '/staticpages/help'
  		
  		page.should have_content('Help')
  	end
  	it "should have the h1 'help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/help'
      page.should have_selector('h1', text: 'Help')
    end
    it "should have the title 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/help'
      page.should have_selector('title', text: 'Ruby on Rails Tutorial Sample App | Help')
    end
  	end

  	describe 'About page' do 
  		it "should have the content 'About us'" do
  			visit '/staticpages/about'
  			page.should have_content('About Us')
  			end

  	it "should have the title 'About us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/about'
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the title 'About us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/about'
      page.should have_selector('title', text: 'Ruby on Rails Tutorial Sample App | About Us')
    end
  	end



  	
 


end
