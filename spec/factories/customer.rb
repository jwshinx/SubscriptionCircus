FactoryGirl.define do
 factory :customer do
  ignore do
   isactive true
   name 'James Bond'
  end
  #initialize_with { Customer.new(:name => 'James Bond', :isactive => true) }
  initialize_with { Customer.new(:name => name, :isactive => isactive) }
 end
 factory :mike, class: Customer do
  initialize_with { Customer.new(:name => 'Michael Corleone', :isactive => true) }
 end
 factory :tim, class: Customer do
  initialize_with { Customer.new(:name => 'Tim Smith', :isactive => true) }
 end
 trait :is_active do
  isactive true
 end
end
