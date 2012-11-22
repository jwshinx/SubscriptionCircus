class ThreeMonthsDelinquentCustomerPolicy 
 attr_reader :customer, :last_invoice

 def initialize options={} 
  @last_invoice = options[:invoice] ? options[:invoice] : 'N/A'
  @customer = @last_invoice.customer
 end

 def delinquent?
  is_active? && owes_balance? && invoiced_three_months_ago?
 end
 
 def invoiced_three_months_ago?
  @last_invoice.date < Date.today-90
 end

 def owes_balance?
  @last_invoice.amount_due - @last_invoice.amount_paid > 0
 end

 def is_active?
  @customer.isactive
 end
 
 def amount_owed
  @last_invoice.amount_due - @last_invoice.amount_paid 
 end 

end
