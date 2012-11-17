require 'spec_helper'
require 'world'

describe "Subscription" do
 include World

 describe "creation" do
  let(:sub) { Subscription.new valid_subscription_attributes } 
  it "returns frequency" do
   sub.frequency.should == 'Monthly' 
  end
  it "returns customer name" do
   sub.customer.name.should == 'James Bond'
  end
  it "returns customer active state" do
   sub.customer.isactive.should be_true 
  end
  it "returns anniversary date" do
   sub.anniversary_date.should == Date.today
  end
  it "returns start-auto-invoicing date" do
   sub.start_auto_invoicing_date.should == Date.today
  end
  it "returns address" do
   sub.address.address.should == '1 Main Street'
  end
  it "returns address zip" do
   sub.address.zip.should == '90000'
  end
  it "returns address acitve state" do
   sub.address.isactive.should be_true 
  end
  it "returns apartment unit" do
   sub.unit.should == '101'
  end
  it "returns *active*" do
   sub.isactive.should be_true 
  end
 end

end
