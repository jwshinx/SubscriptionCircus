FactoryGirl.define do
 factory :invoice, class: Invoice do
  ignore do
   amount_due 50
   amount_paid 50 
   date Date.today
   customer FactoryGirl.build(:customer) 
  end
  initialize_with { new(
                     :date => date, :amount_due => amount_due, :amount_paid => amount_paid,
                     :customer => customer ) }
 end
 trait :hundreds_due do
  amount_due 500 
 end
 trait :not_paid do
  amount_paid 0 
 end
 trait :dated_today do
  date Date.today 
 end
 trait :dated_yesterday do
  date Date.today-1 
 end
 factory :four_months_old_overdue_invoice, class: Invoice do
  initialize_with { Invoice.new(
                     :date => Date.today-120, :amount_due => 50, :amount_paid => 0,
                     :customer => FactoryGirl.build(:mike) ) }
 end
 factory :one_month_old_overdue_invoice, class: Invoice do
  initialize_with { Invoice.new(
                     :date => Date.today-30, :amount_due => 50, :amount_paid => 0,
                     :customer => FactoryGirl.build(:tim) ) }
 end
end
