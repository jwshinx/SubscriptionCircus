module DecisionIdeas
 def self.included(base)
  base.extend ClassMethods
 end

 module ClassMethods 
  def saygoodbye
   'goodbye'
  end

  def try_another method_name, &block
   define_method method_name do |value|
    block.call(value)
   end
  end
 end

end
