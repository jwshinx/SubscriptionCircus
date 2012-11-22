require 'spec_helper'
require 'world'

describe "DelinquentCustomerPolicy" do
 include World

 describe "normally" do
  let(:delinquent_policy_for_mike) { FactoryGirl.build( :delinquent_policy_for_mike ) }
  it { delinquent_policy_for_mike.delinquent?.should be_true } 
 end

 describe "for tim" do
  let(:delinquent_policy_for_mike) { FactoryGirl.build( :delinquent_policy_for_tim ) }
  it { delinquent_policy_for_mike.invoiced_three_months_plus_ago?.should be_false } 
  it { delinquent_policy_for_mike.owes_balance?.should be_true } 
  it { delinquent_policy_for_mike.is_active?.should be_true } 
  it { delinquent_policy_for_mike.amount_owed.should == 50 } 
  it { delinquent_policy_for_mike.delinquent?.should be_false } 
 end

 describe "for jane" do
  let(:delinquent_policy_for_jane) { FactoryGirl.build( :delinquent_policy_for_jane ) }
  it { delinquent_policy_for_jane.invoiced_one_month_plus_ago?.should be_true } 
 end

end

