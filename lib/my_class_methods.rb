module MyClassMethods
 def self.included( base )
  base.extend AddedClassMethods
 end
 
 module AddedClassMethods
  def color
   'red'
  end
 end
end
