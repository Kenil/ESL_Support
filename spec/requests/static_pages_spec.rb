require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "ESL Support" }
  
  # Test case belongs to a home page
  describe "Home page" do
    
    # Rspec disregards everything in this it condition, handled by capybara
    it "should have the content 'ESL Support" do
      
      # visit is a capybara function, simulate visiting webpage provided
      visit '/static_pages/home'
      
      #page variable provided by capybara, resulting page from above command
      expect(page).to have_content('ESL Support')
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end
  
  describe "Help page" do
    
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
  
  describe "Contact Us page" do

    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
    
    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact Us")
    end
  end
end
