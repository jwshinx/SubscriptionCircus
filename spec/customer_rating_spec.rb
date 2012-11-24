require 'spec_helper'
require 'world'

describe "CustomerRating" do
 let(:elton_rating) { FactoryGirl.build( :customer_rating_for_elton ) }
 let(:paul_rating) { FactoryGirl.build( :customer_rating_for_paul ) }

 describe "for elton who owes $50" do
  it { elton_rating.should == 'C' }
 end
 describe "for paul who owes $500" do
  it { paul_rating.should == 'D' }
 end
 describe "comparing elton and paul" do
  it { elton_rating.better_than?(paul_rating).should be_true }
 end
end


