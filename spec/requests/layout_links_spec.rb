require 'spec_helper'

describe "LayoutLinks" do

  it "should find Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should find Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should find About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should find Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end

  it "should find SignUp at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign Up")
  end

  it "should have good link on layout" do
    visit root_path
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Help"
    response.should have_selector('title', :content => "Help")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Sign Up"
    response.should have_selector('title', :content => "Sign Up")
  end

end
