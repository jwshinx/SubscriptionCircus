module GeneralMethods
 def self.included( base )
  base.extend AddedClassMethods
 end
 
 module AddedClassMethods
  def color
   'biege'
  end
 end
 
 module AddedInstanceMethods
  def texture
   'matte'
  end
 end

end
