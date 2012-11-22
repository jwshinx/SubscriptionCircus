FactoryGirl.define do
 factory :address do
  initialize_with { Address.new(:address => '1 Main Street', :zip => '90000', :isactive => true) }
 end
end
