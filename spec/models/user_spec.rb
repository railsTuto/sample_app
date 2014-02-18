# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe User do

  before(:each) do
    @attr = { :name => "Example", :email => "user@example.com" }
  end

  it "should create new instance with good attributs" do
    User.create!(@attr)
  end

  it "should ask a name" do
    bad_guy = User.new(@attr.merge(:name => ""));
    bad_guy.should_not be_valid
  end

  it "should ask an email" do
    bad_guy = User.new(@attr.merge(:email => ""));
    bad_guy.should_not be_valid
  end


end