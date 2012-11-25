class Subscription
 attr_reader :frequency, :customer, :address, :unit, :anniversary_date, :start_auto_invoicing_date, :isactive

 def initialize options={}
  @frequency = options[:frequency] ? options[:frequency] : 'N/A'
  @customer = options[:customer] ? options[:customer] : 'N/A'
  @address = options[:address] ? options[:address] : 'N/A'
  @unit = options[:unit] ? options[:unit] : 'N/A'
  @anniversary_date = options[:anniversary_date] ? options[:anniversary_date] : 'N/A'
  @start_auto_invoicing_date = options[:start_auto_invoicing_date] ? options[:start_auto_invoicing_date] : 'N/A'
  @isactive = options[:isactive] ? options[:isactive] : false
 end
 
 def to_s
  %Q{ 
   name: #{@customer.name}
   frequency: #{@frequency}
   anni dt: #{@anniversary_date}
   start dt: #{@start_auto_invoicing_date}
   address: #{@address.address} #{@unit}
  }
 end
end
