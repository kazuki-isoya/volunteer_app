FactoryBot.define do
  factory :user do
    name { "user" }
    email { "user@email.com" }
    password { "password" }
    admin { true }
    confirmed_at { Date.today }
  end
end
