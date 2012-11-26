require 'spec_helper'
require 'world'

describe "PaymentRating" do
 include World

 let(:mark) { FactoryGirl.build( :payment_20_of_50_rated ) }
 let(:sam) { FactoryGirl.build( :payment_45_of_50_rated ) }
 describe "for mark who has paid $25 of $50" do
  subject { mark }
  it { should == 'D' }
 end
 describe "for sam who has paid $45 of $50" do
  subject { sam }
  it { should == 'C' }
 end
 describe "comparing sam and mark" do
  subject { sam }
  it { sam.better_than?( mark ).should be_true }
 end
 describe "when method *gogo* inserted" do
  it "returns 88" do
   insert_method(PaymentRating, :gogo)
   chris = FactoryGirl.build( :payment_20_of_50_rated ) 
   chris.gogo.should == 88
  end
 end
 describe "when method *abc* inserted" do
  it "returns 77" do
   brees = FactoryGirl.build( :payment_20_of_50_rated ) 
   PaymentRating.try_insert_method
   brees.abc.should == 77 
  end
 end
 describe "when sayhi called with *joel*" do
  it "returns *sup joel*" do
   george = FactoryGirl.build( :payment_20_of_50_rated ) 
   PaymentRating.try_another(:sayhi) do |value|
    value == 'joel' ? 'sup joel' : 'hello'
   end
   george.sayhi('joel').should == 'sup joel'
  end
 end

 describe "when sayhi called with *nico*" do
  it "returns *hello nico*" do
   george = FactoryGirl.build( :payment_20_of_50_rated ) 
   PaymentRating.try_another(:sayhi) do |value|
    value == 'joel' ? 'sup joel' : "hello #{value}"
   end
   george.sayhi('nico').should == 'hello nico'
  end
 end

 describe "when saygoodbye called with *joel*" do
  it "returns *later joel*" do
   blue = FactoryGirl.build( :payment_20_of_50_rated ) 
   blue.saygoodbye('joel').should == 'later joel'
  end
 end

 describe "when saygoodbye called with *nico*" do
  it "returns *goodbye nico*" do
   red = FactoryGirl.build( :payment_20_of_50_rated ) 
   red.saygoodbye('nico').should == 'goodbye nico'
  end
 end

 describe "when nnn" do
  #let(:yellow) { FactoryGirl.build( :payment_nnn_rated ) }
  let(:yellow) { FactoryGirl.build( :payment_20_of_50_rated ) }
  let(:invoice) { FactoryGirl.build( :invoice ) }
  it "returns nnn" do
   yellow.from_nnn_invoice( invoice ).should == 'A'
  end
 end

 #its(:name){ should be_present }
end

def insert_method(clazz, method_name)
 eval "
  class #{clazz}
   def #{method_name}
    88    
   end
  end
 "
end
class Class
 def try_another method_name, &block
  define_method method_name do |value|
   #"hello #{value}"
   block.call(value)
  end
 end
 def try_insert_method
  define_method 'abc' do
   77
  end
 end
end
