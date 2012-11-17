class Customer
 attr_reader :name, :isactive

 def initialize options={}
  @name = options[:name] ? options[:name] : 'N/A'  
  @isactive = options[:isactive] ? options[:isactive] : false
 end

 def to_s
  puts %Q{
   name: #{@name}
   isactive: #{@isactive}
  }
 end
end

