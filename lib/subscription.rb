class Subscription
 attr_reader :frequency, :name, :address, :unit, :anniversary_date, :start_auto_invoicing_date 
 def initialize options={}
   #puts "---> #{options.inspect}"
   #puts "---> xxx not defined 1" if options[:xxx].nil?
   #puts "---> xxx not defined 2" if options.has_key?(:xxx)
   #puts "---> xxx not defined 3" if options[:xxx]
   @frequency = options[:frequency] ? options[:frequency] : 'N/A'
   @name = options[:name] ? options[:name] : 'N/A'
   @address = options[:address] ? options[:address] : 'N/A'
   @unit = options[:unit] ? options[:unit] : 'N/A'
   @anniversary_date = options[:anniversary_date] ? options[:anniversary_date] : 'N/A'
   @start_auto_invoicing_date = options[:start_auto_invoicing_date] ? options[:start_auto_invoicing_date] : 'N/A'
   @isactive = options[:isactive] ? options[:isactive] : false
 end
 
 def to_s
  puts %Q{ 
   name: #{@name}
   frequency: #{@frequency}
   anni dt: #{@anniversary_date}
   start dt: #{@start_auto_invoicing_date}
   address: #{@address} #{@unit}
  }
 end
end
