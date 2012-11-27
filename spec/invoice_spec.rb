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
  let(:invoice) { FactoryGirl.build( :invoice, :amount_500_due, :not_paid, :dated_yesterday ) }
  it { invoice.customer.name.should == 'James Bond' }
  it { invoice.amount_due.should == 500 }
  it { invoice.amount_paid.should == 0 }
  it { invoice.date.should == Date.today-1 } 
 end

 describe "unpaid, due last month" do
  let(:invoice) { FactoryGirl.build( :one_month_old_overdue_invoice, :dated_30_days_ago ) }
  it { invoice.customer.name.should == 'Tim Smith' }
  it { invoice.amount_due.should == 50 }
  it { invoice.amount_paid.should == 0 }
  it { invoice.date.should == Date.today-30 } 
 end
 
 describe "by default" do
  describe "color" do
   it "returns *biege*" do
    Invoice.color.should == 'biege'
   end
  end
  describe "texture" do
   it "returns *matte*" do
    invoice = FactoryGirl.build( :invoice )
    invoice.texture.should == 'matte'
   end
  end
 end 
end

