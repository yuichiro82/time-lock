# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
  [task_id: 2, act_time:22, user_id: 1],
  [tasl_id:1,act_time: 22, user_id:2],
  [task_id: 2,act_time: 7, user_id:2],
  [task_id: 1,act_time: 48, user_id:2],
  [task_id: 1,act_time: 94, user_id:2],
  [task_id: 4,act_time: 85, user_id:3],
  [task_id: 2,act_time: 22, user_id:1],
  [task_id: 3,act_time: 48],user_id:1,
].each do |record|
  Chart.create(
    created_at: Time.zone.local(record[0]),
    task_id: record[1],
    act_time: record[2],
  )
end