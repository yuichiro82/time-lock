class Chart < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :task_id
    validates :act_time
  end
end
