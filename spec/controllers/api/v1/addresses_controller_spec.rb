# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::AddressesController, type: :controller do
  describe 'GET index' do
    let(:user) { create(:user) }

    # This should return the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in
    # UsersController. Be sure to keep this updated too.
    let(:valid_session) do
      { email: 'red@email.com', password: '123456789' }
    end

    it 'has a 200 (ok) status code' do
      @request.headers['X-User-Email'] = user[:email]
      @request.headers['X-User-Token'] = user[:authentication_token]
      @request.headers['Content-Type'] = 'application/json'

      get :index, params: { cep: '89892970' }, session: valid_session
      assert_response :success
    end
  end
end
