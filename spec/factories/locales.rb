# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :locale do
    name "Frontera Grill"
    address "Terminal 3, O'Hare Airport, Chicago, IL"
    has_visited false
  end
end
