FactoryGirl.define do
 factory :invoice do
  initialize_with { Invoice.new(
                     :date => Date.today, :amount_due => 50, :amount_paid => 50,
                     :customer => FactoryGirl.build(:customer) ) }
 end
 factory :four_months_old_overdue_invoice, class: Invoice do
  initialize_with { Invoice.new(
                     :date => Date.today-120, :amount_due => 50, :amount_paid => 0,
                     :customer => FactoryGirl.build(:mike) ) }
 end
end
