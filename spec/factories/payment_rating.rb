FactoryGirl.define do
 factory :payment_rating, class: PaymentRating do
  initialize_with { PaymentRating.from_last_invoice( 
                     FactoryGirl.build(:invoice)
                    ) }
 end
 factory :payment_20_of_50_rated, class: PaymentRating do
  initialize_with { PaymentRating.from_last_invoice( 
   FactoryGirl.build(:invoice, :amount_50_due, :amount_20_paid) )
  }
 end
 factory :payment_45_of_50_rated, class: PaymentRating do
  initialize_with { PaymentRating.from_last_invoice( 
   FactoryGirl.build(:invoice, :amount_50_due, :amount_45_paid) )
  }
 end
 factory :payment_nnn_rated, class: PaymentRating do
  initialize_with { PaymentRating.from_nnn_invoice( 
   FactoryGirl.build(:invoice, :amount_50_due, :amount_45_paid) )
  }
 end
end
