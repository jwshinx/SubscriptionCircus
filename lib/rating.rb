class Rating
 include Comparable

=begin
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
=end

 def initialize(letter)
  @letter = letter
 end

 def better_than?(other)
  self > other
 end

 def <=>(other)
  other.to_s <=> to_s
 end

 def hash
  @letter.hash
 end

 def eql?(other)
  to_s == other.to_s
 end

 def to_s
  @letter.to_s
 end

end
