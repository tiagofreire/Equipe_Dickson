# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ranking do
    user nil
    category nil
    obs "MyText"
    ok false
  end
end
