module DecisionIdeas
 def self.included(base)
  base.extend ClassMethods
 end

 module ClassMethods 
  def saygoodbye
   'goodbye'
  end

  def create_based_on method_name, &block
   define_method method_name do |arg|
    block.call(arg.amount_paid, arg.amount_due)
   end
  end
 
  def analyze_from arg1, arg2
   yield( arg1, ( arg2.amount_paid.to_f / arg2.amount_due.to_f ))
  end

  def try_another method_name, &block
   define_method method_name do |value|
    block.call(value)
   end
  end
 end

end
