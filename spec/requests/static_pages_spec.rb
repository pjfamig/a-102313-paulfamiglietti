require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Paul Famiglietti" }
  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Paul Famiglietti') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end
  
  describe "About page" do
    before { visit about_path }
    it { should have_content('About Me') }
    it { should have_title(full_title('')) }
  end
  
  describe "Contact page" do
    before { visit contact_path }
    it { should have_content('Contact Me') }
    it { should have_title(full_title('')) }
  end
end