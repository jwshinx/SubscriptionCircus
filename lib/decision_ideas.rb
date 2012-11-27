module DecisionIdeas
 def self.included(base)
  base.extend ClassMethods
 end

 module ClassMethods 

  def create_based_on method_name, &block
   define_method method_name do |arg|
    block.call(arg.amount_paid, arg.amount_due)
   end
  end
 
  def analyze_from arg1, arg2
   yield( arg1, ( arg2.amount_paid.to_f / arg2.amount_due.to_f ))
  end

  def create_message method_name, &block
   define_method method_name do |value|
    block.call(value)
   end
  end

  def delinquent_msg method_name, &block
   define_method method_name do |amt, date|
    block.call(amt, date)
   end
  end

 end

end
