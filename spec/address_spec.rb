require 'spec_helper'
require 'world'

describe "Address" do
 include World

 describe "normally" do
  let(:address) { FactoryGirl.build( :address ) }
  it { address.address.should == '1 Main Street' }
  it { address.zip.should == '90000' }
  it { address.isactive.should be_true}
 end

end

