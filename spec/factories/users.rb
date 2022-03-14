FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "test#{n}@grepp.co"
    end
    password {"1q2w3e4r"}
  end
end