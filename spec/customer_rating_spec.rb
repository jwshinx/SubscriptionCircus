require 'spec_helper'
require 'world'

describe "CustomerRating" do

 describe "for elton who owes $50" do
  let(:customer_rating_for_elton) { FactoryGirl.build( :customer_rating_for_elton ) }
  it { customer_rating_for_elton.should == 'C' }
 end
 describe "for paul who owes $500" do
  let(:customer_rating_for_paul) { FactoryGirl.build( :customer_rating_for_paul ) }
  it { customer_rating_for_paul.should == 'D' }
 end

end

