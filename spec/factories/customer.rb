FactoryGirl.define do
 factory :customer do
  ignore do
   #options { :name => 'James Bond', :isactive => true }
   #name 'James Bond'
   #isactive true
  end
  initialize_with { Customer.new(:name => 'James Bond', :isactive => true) }
 end
 factory :mike, class: Customer do
  initialize_with { Customer.new(:name => 'Michael Corleone', :isactive => true) }
 end
end
