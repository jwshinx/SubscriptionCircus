module World

 def valid_customer_attributes
  {:name => 'James Bond', :isactive => true}
 end

 def valid_subscription_attributes
  customer = Customer.new valid_customer_attributes 
  { :frequency => 'Monthly', :anniversary_date => Date.today, :start_auto_invoicing_date => Date.today, 
    :customer => customer, :address => '1 Main St', :unit => '101', :isactive => true }
 end

end
