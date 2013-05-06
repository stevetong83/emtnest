FactoryGirl.define do
  factory :pattern do
    name "Pattern"
    association :product
  end
end
