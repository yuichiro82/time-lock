FactoryBot.define do
  factory :event do
    title { 1 }
    start_time { Time.now }
    end_time { Time.now }
    user_id  { 1 }
    association :user 
  end
end
