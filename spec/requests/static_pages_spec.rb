# could be either visit '/static_pages/about' or visit about_path
require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "ESL Support" }
  
  # Test case belongs to a home page
  # describe "Home page" do
    
    # visit is a capybara function, simulate visiting webpage provided
    #before {visit root_path}
    
    # Rspec disregards everything in this it condition, handled by capybara
    #it "should have the content 'ESL Support" do
      #page variable provided by capybara, resulting page from above command
     # expect(page).to have_content('ESL Support')
   # end
    
    #it "should have the base title" do 
     # expect(page).to have_title("ESL Support")
   # end
    
   # it "should have the right title" do
     # expect(page).not_to have_title('| Home')
    #end
 # end
 
  require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('ESL Support') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
end
  
  