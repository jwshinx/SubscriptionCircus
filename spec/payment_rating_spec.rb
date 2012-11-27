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
 describe "when sayhi called with *joel*" do
  it "returns *sup joel*" do
   george = FactoryGirl.build( :payment_20_of_50_rated ) 
   PaymentRating.create_message(:delinquency_message) do |value|
    value == 'joel' ? 'sup joel' : 'hello'
   end
   george.delinquency_message('joel').should == 'sup joel'
  end
 end

 describe "when sayhi called with *nico*" do
  it "returns *hello nico*" do
   george = FactoryGirl.build( :payment_20_of_50_rated ) 
   PaymentRating.create_message(:sayhi) do |value|
    value == 'joel' ? 'sup joel' : "hello #{value}"
   end
   george.sayhi('nico').should == 'hello nico'
  end
 end

 describe "when owes > $100 for only 30 days" do
  it "returns *Owes $480." do
   inv = FactoryGirl.build( :invoice, 
                            :dated_30_days_ago,
                            :only_20_paid,
                            :amount_500_due ) 
   six = FactoryGirl.build( :payment_20_of_50_rated ) 
   six.lots_due_message(inv.amount_due - inv.amount_paid, 
                        inv.date ).should == 'Owes $480.'
  end
 end

 describe "when owes > $100 for more than 90 days" do
  it "returns *Collection now." do
   inv = FactoryGirl.build( :invoice, 
                            :dated_120_days_ago,
                            :only_20_paid,
                            :amount_500_due ) 
   red = FactoryGirl.build( :payment_20_of_50_rated ) 
   red.lots_due_message(inv.amount_due - inv.amount_paid, 
                        inv.date ).should == 'Collection now.'
  end
 end

 describe "when nnn" do
  #let(:yellow) { FactoryGirl.build( :payment_nnn_rated ) }
  let(:yellow) { FactoryGirl.build( :payment_20_of_50_rated ) }
  let(:invoice) { FactoryGirl.build( :invoice ) }
  it "returns nnn" do
   #yellow = FactoryGirl.build( :payment_nnn_rated ) 
   yellow.from_nnn_invoice( invoice ).should == 'A'
  end
 end
 describe "when mmm" do
  it "returns mmm" do
   blue = FactoryGirl.build( :payment_20_of_50_rated ) 
   puts "---> noise? #{PaymentRating.methods.grep(/^no/).inspect}"
   puts "---> blue noise #{PaymentRating.noise}"
   puts "---> color? #{PaymentRating.methods.grep(/^col/).inspect}"
   puts "---> its color #{PaymentRating.color}"
  end
 end
 describe "when 50 of 50 paid" do
  it "returns *A*" do
   inv = FactoryGirl.build( :invoice ) 
   pr = Rating.analyze_from("PaymentRating", inv) do |c, pct|
    MyProcs::GRADE_SCALE_ONE.call( c, pct )
   end
   pr.should == 'A'
  end
 end
 describe "when 30 of 50 paid" do
  it "returns *C*" do
   inv = FactoryGirl.build( :invoice, :only_30_paid ) 
   pr = Rating.analyze_from("PaymentRating", inv) do |c, pct|
    MyProcs::GRADE_SCALE_ONE.call( c, pct )
   end
   pr.should == 'C'
  end
 end
 describe "when 20 of 50 paid" do
  it "returns *D*" do
   inv = FactoryGirl.build( :invoice, :only_20_paid ) 
   pr = Rating.analyze_from("PaymentRating", inv) do |c, pct|
    MyProcs::GRADE_SCALE_ONE.call( c, pct )
   end
   pr.should == 'D'
  end
 end
 describe "when none paid" do
  it "returns *F*" do
   inv = FactoryGirl.build( :invoice, :not_paid ) 
   pr = Rating.analyze_from("PaymentRating", inv) do |c, pct|
    MyProcs::GRADE_SCALE_ONE.call( c, pct )
   end
   pr.should == 'F'
  end
 end

 #its(:name){ should be_present }
end

class Class
 def noise
  'grrrrr'
 end
end
