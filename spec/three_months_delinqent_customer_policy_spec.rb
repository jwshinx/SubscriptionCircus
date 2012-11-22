require 'spec_helper'
require 'world'

describe "ThreeMonthsDelinquentCustomerPolicy" do
 include World

 describe "normally" do
  let(:delinquent_policy_for_mike) { FactoryGirl.build( :delinquent_policy_for_mike ) }
  it { delinquent_policy_for_mike.delinquent?.should be_true } 
 end

end

