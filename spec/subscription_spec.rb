require 'spec_helper'
require 'world'

describe "Subscription" do
 include World

 describe "normally" do
  let(:subscription) { FactoryGirl.build( :subscription ) }
  it { subscription.frequency.should == 'Monthly' } 
  it { subscription.anniversary_date.should == Date.today } 
  it { subscription.start_auto_invoicing_date.should == Date.today } 
  it { subscription.isactive.should be_true } 
  it { subscription.unit.should == '101' } 
  it { subscription.customer.name.should == 'James Bond' } 
  it { subscription.address.address.should == '1 Main Street' }
 end
end
