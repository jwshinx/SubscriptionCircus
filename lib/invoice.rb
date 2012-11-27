require 'general_methods'

class Invoice
 include GeneralMethods
 include GeneralMethods::AddedInstanceMethods

 attr_reader :customer, :date, :amount_due, :amount_paid

 def initialize options={}
  @customer = options[:customer] ? options[:customer] : 'N/A'
  @date = options[:date] ? options[:date] : 'N/A'
  @amount_paid = options[:amount_paid] ? options[:amount_paid] : 'N/A'
  @amount_due = options[:amount_due] ? options[:amount_due] : 'N/A'
 end

 def to_s
  %Q{
   customer: #{@customer.name}
   date: #{@date}
   amount due: #{@amount_due}
   amount paid: #{@amount_paid}
  }
 end
end
