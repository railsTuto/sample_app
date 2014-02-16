require 'spec_helper'

describe PagesController do
render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it "should have good title" do
      get 'home'
      response.should have_selector("title", :content => "Sample App for Rails Tuto | Home")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have good title" do
      get 'contact'
      response.should have_selector("title", :content => "Sample App for Rails Tuto | Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have good title" do
      get 'about'
      response.should have_selector("title", :content => "Sample App for Rails Tuto | About")
    end

  end

end
