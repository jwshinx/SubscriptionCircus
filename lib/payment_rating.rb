class PaymentRating
 include Comparable

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

 def initialize(letter)
  @letter = letter
 end

 def <=>(other)
  other.to_s <=> to_s
 end

 def better_than?( other )
  self > other
 end
 def to_s
  @letter.to_s
 end
end
