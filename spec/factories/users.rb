# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'Lorem Ipsum' }
    email { 'li@email.com' }
    password { '123456789' }
  end
end
