FactoryBot.define do
  factory :volunteer do
    title { "test" }
    describe { "rspec_test" }
    date { 'Sun, 11 Apr 2021 10:00:00 JST +09:00' }
    capacity { 4 }
    address { "test_address" }
    association :user
  end
end
