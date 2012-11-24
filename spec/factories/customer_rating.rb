FactoryGirl.define do
 factory :customer_rating, class: CustomerRating do
  initialize_with { CustomerRating.from_amount_due( FactoryGirl.build(:invoice, :dated_today) ) }
 end
 factory :customer_rating_for_elton, class: CustomerRating do
  initialize_with { CustomerRating.from_amount_due( FactoryGirl.build(:invoice, :dated_120_days_ago) ) }
 end
 factory :customer_rating_for_paul, class: CustomerRating do
  initialize_with { CustomerRating.from_amount_due( FactoryGirl.build(:invoice, :hundreds_due ) ) }
 end
end
