FactoryGirl.define do
 factory :invoice, class: Invoice do
  ignore { amount_due 50; amount_paid 50; date Date.today; customer FactoryGirl.build(:customer) }
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
 trait :dated_30_days_ago do
  date Date.today-30
 end
 trait :dated_120_days_ago do
  date Date.today-120
 end
 factory :four_months_old_overdue_invoice, class: Invoice do
  ignore { amount_due 50; amount_paid 0; date Date.today; customer FactoryGirl.build(:mike) }
  initialize_with { Invoice.new(
                     :date => date, :amount_due => amount_due, :amount_paid => amount_paid,
                     :customer => customer ) }
 end
 factory :one_month_old_overdue_invoice, class: Invoice do
  ignore { amount_due 50; amount_paid 0; date Date.today-30; customer FactoryGirl.build(:tim) }
  initialize_with { Invoice.new(
                     :date => date, :amount_due => amount_due, :amount_paid => amount_paid,
                     :customer => customer ) }
 end
 factory :one_month_plus_overdue_invoice, class: Invoice do
  ignore { amount_due 50; amount_paid 0; date Date.today-40; customer FactoryGirl.build(:jane) }
  initialize_with { Invoice.new(
                     :date => date, :amount_due => amount_due, :amount_paid => amount_paid,
                     :customer => customer ) }
 end
end
