FactoryBot.define do
  factory :user do
    name { "user" }
    email { "user@email.com" }
    password { "password" }
    admin { true }
  end
end
