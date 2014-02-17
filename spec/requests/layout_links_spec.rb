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


end
