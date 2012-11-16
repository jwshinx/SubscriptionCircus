require 'spec_helper'

describe "Subscription" do
 describe "creation" do
  before { @sub = Subscription.new valid_subscription_attributes } 
  #let(:sub) { Subscription.new 'Monthly', Date.today, Date.today, true, 'James Bond', '123 Main St', '101' }
  #subject
  it "returns frequency" do
   @sub.frequency.should == 'Monthly'
  end
  it "returns xxx" do
   @sub.to_s
  end
 end
end

def valid_subscription_attributes
 {:frequency => 'Monthly', :anniversary_date => Date.today, :start_auto_invoicing_date => Date.today, :name => 'James Bond', :address => '1 Main St', :unit => '101' } 
end
