require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Rails Sample App" }

  describe "Home page" do
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Home | #{base_title}")
    end
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help page" do
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Help | #{base_title}")
    end
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("About Us | #{base_title}")
    end
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end

  describe "Contact page" do
    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("Contact | #{base_title}")
    end
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end

end