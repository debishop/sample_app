require 'spec_helper'


describe "Staticpages" do
	let(:base_title){"Ruby on Rails Tutorial Sample App"}

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
 it "should have the base title" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/home'
      
      page.should have_selector("title", text: "Ruby on Rails Tutorial Sample App")
    end
  it "should not have the custom page title" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/home'
      page.should_not have_selector("title", text: " | Home")
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
      page.should have_selector("title", text: "#{base_title} | Help")
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
      page.should have_selector("title", text: "#{base_title} | About Us")
    end
  	end

describe 'Contact page' do 
  		it "should have the content 'Contact Us'" do
  			visit '/staticpages/contact'
  			page.should have_content('Contact Us')
  			end

  	it "should have the title 'Contact Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/contact'
      page.should have_selector('h1', text: 'Contact Us')
    end

    it "should have the title 'Contact Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staticpages/contact'
      page.should have_selector("title", text: "#{base_title} | Contact Us")
    end
  	end


  	
 


end
