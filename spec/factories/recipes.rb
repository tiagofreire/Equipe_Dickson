# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe do
    name "MyString"
    items "MyText"
    preparation "MyText"
    category nil
  end
end
