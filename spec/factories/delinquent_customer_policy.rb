FactoryGirl.define do
 factory :delinquent_policy_for_mike, class: DelinquentCustomerPolicy do
  initialize_with { DelinquentCustomerPolicy.new(
                     :invoice => FactoryGirl.build(:four_months_old_overdue_invoice, :dated_120_days_ago) ) } 
 end
 factory :delinquent_policy_for_tim, class: DelinquentCustomerPolicy do
  initialize_with { DelinquentCustomerPolicy.new(
                     :invoice => FactoryGirl.build(:one_month_old_overdue_invoice) ) } 
 end
 factory :delinquent_policy_for_jane, class: DelinquentCustomerPolicy do
  initialize_with { DelinquentCustomerPolicy.new(
                     :invoice => FactoryGirl.build(:one_month_plus_overdue_invoice) ) } 
 end
end
