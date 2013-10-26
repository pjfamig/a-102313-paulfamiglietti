require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Paul Famiglietti" }

  describe "Home page" do
    it "should have the content 'Paul Famiglietti'" do
      visit '/static_pages/home'
      expect(page).to have_content('Paul Famiglietti')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Paul Famiglietti")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
    
  end
  
  describe "About page" do
    it "should have the content 'About Me'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Me')
    end
    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Me")
    end
  end
  
  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Me') 
    end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact Me")
    end
  end
end