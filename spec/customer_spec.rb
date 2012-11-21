require 'spec_helper'
require 'world'

describe "Customer" do
 include World

 describe "creation" do
  let(:cust) { Customer.new valid_customer_attributes } 
  it "returns name" do
   cust.name.should == 'James Bond'
  end
  it "returns *active*" do
   cust.isactive.should == true 
  end
 end

 describe "factory" do
  let(:james) { FactoryGirl.build(:customer) }
  it { james.name.should == 'James Bond' }
  it { james.isactive.should be_true } 
 end
end

