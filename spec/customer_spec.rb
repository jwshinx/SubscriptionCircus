require 'spec_helper'
require 'world'

describe "Customer" do
 include World

 describe "normally" do
  let(:james) { FactoryGirl.build(:customer, :is_active) }
  it { james.name.should == 'James Bond' }
  it { james.isactive.should be_true } 
 end
end

