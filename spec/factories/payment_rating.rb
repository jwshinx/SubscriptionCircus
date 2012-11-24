FactoryGirl.define do
 factory :payment_rating, class: PaymentRating do
  initialize_with { PaymentRating.from_last_invoice( 
                     FactoryGirl.build(:invoice)
                    ) }
 end
 factory :payment_20_of_50_rated, class: PaymentRating do
  initialize_with { PaymentRating.from_last_invoice( 
   FactoryGirl.build(:only_20_of_50_paid_invoice, :amount_20_paid) )
  }
 end
 factory :payment_45_of_50_rated, class: PaymentRating do
  initialize_with { PaymentRating.from_last_invoice( 
   FactoryGirl.build(:invoice, :amount_45_paid) )
  }
 end
end
