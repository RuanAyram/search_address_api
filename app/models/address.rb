# frozen_string_literal: true

class Address < ApplicationRecord
  ##### VALIDATIONS
  validates :cep, presence: true
end
