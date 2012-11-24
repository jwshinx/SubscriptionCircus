class PaymentRating < Rating

 def self.from_last_invoice( invoice )
  if( (invoice.amount_paid.to_f / invoice.amount_due.to_f) == 1 )
   new("A")
  elsif( (invoice.amount_paid.to_f / invoice.amount_due.to_f) >= 0.5 )
   new("C")
  elsif( (invoice.amount_paid.to_f / invoice.amount_due.to_f) > 0 )
   new("D")
  else
   new("F")
  end
 end

end
