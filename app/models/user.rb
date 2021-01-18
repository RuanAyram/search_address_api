# frozen_string_literal: true

class User < ApplicationRecord
  acts_as_token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ##### VALIDATIONS
  validates :name, :email, :password, presence: true
end
