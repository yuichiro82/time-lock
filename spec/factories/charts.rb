FactoryBot.define do
  factory :chart do
    task_id { 1 }
    act_time { 1 }
    user_id  { 1 }
    association :user 
  end
end
