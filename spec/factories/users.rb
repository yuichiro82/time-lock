# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email                 { Faker::Internet.email }
    password              { Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1) }
    password_confirmation { password }
    after(:build) do |item|
      item.image.attach(io: File.open('spec/fixtures/camera.png'), filename: 'camera.png', content_type: 'image/png')
    end
  end
end
