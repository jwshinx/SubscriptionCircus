FactoryGirl.define do
 factory :invoice do
  initialize_with { Invoice.new(
                     :date => Date.today, :amount_due => 50, :amount_paid => 50,
                     :customer => FactoryGirl.build(:customer) ) }
 end
end
