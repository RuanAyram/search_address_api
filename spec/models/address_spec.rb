# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'when testing validations' do
    it { should validate_presence_of(:cep) }
  end
end
