# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Address', type: :request do
  before(:all) do
    @user1 = create(:user)
  end

  describe 'GET index' do
    it 'returns http status 200 (ok)' do
      headers = { 'X-User-Email' => @user1[:email], 'X-User-Token' => @user1[:authentication_token],
                  'CONTENT_TYPE' => 'application/json' }

      get api_v1_addresses_path, params: { cep: '64018510' }, headers: headers

      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq('application/json; charset=utf-8')
      expect(response.body).to eq('{"cep":"64018510","street":"Rua Simplício Mendes","neighborhood":"Vermelha","city":"Teresina","uf":"PI","complete_address":"Rua Simplício Mendes, Vermelha, Teresina - PI - 64018510"}')
    end
  end
end
