require 'spec_helper'


describe "Staticpages" do
	let(:base_title){"Ruby on Rails Tutorial Sample App"}

subject{page}
  describe "Home page" do
    before{visit root_path}

    it { page.should have_content ('Sample App') }
    it { page.should have_selector('h1',  text: 'Sample App') }
    it { page.should have_selector("title", text: "#{base_title}") }
    it { page.should_not have_selector("title", text: " | Home") }
  end

 describe 'Help page' do
  before{visit help_path}
  	it { page.should have_content('Help') }
  	it { page.should have_selector('h1', text: 'Help') }
    it { page.should have_selector("title", text: "#{base_title} | Help") }
  	end

describe 'About page' do 
  before{visit about_path}
  	it { page.should have_content('About Us') }
  	it { page.should have_selector('h1', text: 'About Us') }
    it { page.should have_selector("title", text: "#{base_title} | About Us") }
  	end

describe 'Contact page' do 
  before{visit contact_path}
  		it { page.should have_content('Contact Us') }
  	  it { page.should have_selector('h1', text: 'Contact Us') }
      it { page.should have_selector("title", text: "#{base_title} | Contact Us") }
  	end


  	
 


end
