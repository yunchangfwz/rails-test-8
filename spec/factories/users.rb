FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user-#{n}@example.com"}
    sequence(:first_name) { |n| "User #{n}"}
    last_name 'Futureworkz'
    password  '123123123'
    password_confirmation '123123123'
  end
end
