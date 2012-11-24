class CustomerRating < Rating

 def self.from_amount_due( invoice )
  if invoice.amount_due == 0
   new("A")
  elsif invoice.amount_due >= 1000 
   new("F")
  elsif invoice.amount_due >= 100
   new("D")
  else
   new("C")
  end 
 end

end
