FactoryGirl.define do
 factory :subscription do
  initialize_with { Subscription.new(
                     :frequency => 'Monthly', :unit => '101', :anniversary_date => Date.today,
                     :start_auto_invoicing_date => Date.today, :isactive => true, 
                     :customer => FactoryGirl.build(:customer),
                     :address => FactoryGirl.build(:address) ) } 
 end
end
