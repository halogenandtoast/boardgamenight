FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  sequence(:username) { |n| "user#{n}" }

  factory :user do
    username
    email
    password_digest 'password'
  end

  factory :group do
    title "Group"
  end
end
