FactoryBot.define do
  factory :volunteer do
    title { "test" }
    describe { "rspec_test" }
    date { 'Sat, 11 Apr 2020 10:00:00 JST +09:00' }
    capacity { 4 }
    address { "test_address" }
    association :user
  end
end
