module World

 def valid_customer_attributes
  {:name => 'James Bond', :isactive => true}
 end

 def valid_subscription_attributes
  {:frequency => 'Monthly', :anniversary_date => Date.today, :start_auto_invoicing_date => Date.today, :name => 'James Bond', :address => '1 Main St', :unit => '101', :isactive => true}
 end

end
