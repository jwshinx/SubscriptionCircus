class DelinquentCustomerPolicy 
 attr_reader :customer, :last_invoice

 def initialize options={} 
  @last_invoice = options[:invoice] ? options[:invoice] : 'N/A'
  @customer = @last_invoice.customer
 end

 def delinquent?
  is_active? && owes_balance? && invoiced_three_months_plus_ago?
 end
 
 def invoiced_three_months_plus_ago?
  @last_invoice.date < Date.today-90
 end

 def invoiced_one_month_plus_ago?
  @last_invoice.date < Date.today-30
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
