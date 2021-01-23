FactoryBot.define do
  factory :event do
    title { 1 }
    start_time { Time.now }
    end_time { Time.now }
    user_id  { 1 }
  end
end
