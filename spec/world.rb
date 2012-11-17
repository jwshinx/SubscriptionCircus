module World

 def valid_customer_attributes
  {:name => 'James Bond', :isactive => true}
 end

 def valid_address_attributes
  {:address => '1 Main Street', :zip => '90000', :isactive => true}
 end

 def valid_subscription_attributes
  customer = Customer.new valid_customer_attributes 
  address = Address.new valid_address_attributes
  { :frequency => 'Monthly', :anniversary_date => Date.today, :start_auto_invoicing_date => Date.today, 
    :customer => customer, :address => address, :unit => '101', :isactive => true }
 end

end
