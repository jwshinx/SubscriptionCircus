require 'decision_ideas'
require 'general_methods'

class Rating
 include Comparable
 include DecisionIdeas
 include GeneralMethods

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
