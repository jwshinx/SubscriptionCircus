#require 'decision_ideas'
#require 'my_class_methods'

class PaymentRating < Rating
 #include DecisionIdeas 
 #include MyClassMethods
 
 delinquent_msg :lots_due_message do |amount, date|
  (amount > 100 && date < Date.today-90) ? 
   'Collection now.' : 
   "Owes $#{amount}."
 end
   
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
