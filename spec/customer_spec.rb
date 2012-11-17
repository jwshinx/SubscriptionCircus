require 'spec_helper'

describe "Customer" do

 describe "creation" do
  let(:cust) { Customer.new valid_customer_attributes } 
  it "returns name" do
   cust.name.should == 'James Bond'
  end
  it "returns *active*" do
   cust.isactive.should == true 
  end
 end

end

def valid_customer_attributes
 {:name => 'James Bond', :isactive => true}
end
