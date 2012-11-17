require 'spec_helper'

describe "Subscription" do

 describe "creation" do
  let(:sub) { Subscription.new valid_subscription_attributes } 
  it "returns frequency" do
   sub.frequency.should == 'Monthly' 
  end
  it "returns name" do
   sub.name.should == 'James Bond'
  end
  it "returns anniversary date" do
   sub.anniversary_date.should == Date.today
  end
  it "returns start-auto-invoicing date" do
   sub.start_auto_invoicing_date.should == Date.today
  end
  it "returns address" do
   sub.address.should == '1 Main St'
  end
  it "returns apartment unit" do
   sub.unit.should == '101'
  end
 end

end

def valid_subscription_attributes
 {:frequency => 'Monthly', :anniversary_date => Date.today, :start_auto_invoicing_date => Date.today, :name => 'James Bond', :address => '1 Main St', :unit => '101' } 
end
