# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo, :class => 'Photos' do
    name "MyString"
  end
end
