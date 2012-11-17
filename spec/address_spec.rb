require 'spec_helper'
require 'world'

describe "Address" do
 include World

 describe "creation" do
  #let(:address) { Address.new valid_address_attributes } 
  before do
   #@address = Address.new valid_address_attributes  
   @address = double 'address'
  end
  it "returns name" do
   @address.stub(:address).and_return('1 Main Street')
   @address.address.should == '1 Main Street'
  end
  it "returns zip" do
   @address.stub(:zip).and_return('90000')
   @address.zip.should == '90000' 
  end
  it "returns *active*" do
   @address.stub(:isactive).and_return(true)
   @address.isactive.should == true 
  end
 end

end

