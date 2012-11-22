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

 describe "hundreds-unpaid, due yesterday" do
  let(:invoice) { FactoryGirl.build( :invoice, :hundreds_due, :not_paid, :dated_yesterday ) }
  it { invoice.customer.name.should == 'James Bond' }
  it { invoice.amount_due.should == 500 }
  it { invoice.amount_paid.should == 0 }
  it { invoice.date.should == Date.today-1 } 
 end
end

