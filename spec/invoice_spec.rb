require 'spec_helper'
require 'world'

describe "Invoice" do
 include World

 describe "normally" do
  let(:invoice) { FactoryGirl.build( :invoice ) }
  it { invoice.customer.name.should == 'James Bond' } 
  it { invoice.date.should == Date.today } 
  it { invoice.amount_due.should == 50 }
  it { invoice.amount_paid.should == 50 }
 end

end

