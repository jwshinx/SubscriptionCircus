FactoryGirl.define do
 factory :delinquent_policy_for_mike, class: ThreeMonthsDelinquentCustomerPolicy do
  initialize_with { ThreeMonthsDelinquentCustomerPolicy.new(
                     :invoice => FactoryGirl.build(:four_months_old_overdue_invoice) ) } 
 end
end
