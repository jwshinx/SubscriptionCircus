require 'spec_helper'

describe "PaymentRating" do
 let(:mark) { FactoryGirl.build( :payment_20_of_50_rated ) }
 let(:sam) { FactoryGirl.build( :payment_45_of_50_rated ) }
 describe "for mark who has paid $25 of $50" do
  it { mark.should == 'D' }
 end
 describe "for sam who has paid $45 of $50" do
  it { sam.should == 'C' }
 end
 describe "comparing sam and mark" do
  it { sam.better_than?( mark ).should be_true }
 end
end
