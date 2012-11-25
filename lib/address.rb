class Address
 attr_reader :address, :zip, :isactive

 def initialize options={} 
  @address = options[:address] ? options[:address] : 'N/A'
  @zip = options[:zip] ? options[:zip] : 'N/A'
  @isactive = options[:isactive] ? options[:isactive] : false 
 end

 def to_s
  %Q{
   address: #{@address}
   zip: #{@zip}
   isactive: #{@isactive}
  }
 end

end
