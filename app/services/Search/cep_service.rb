# frozen_string_literal: true

require 'rest-client'
require 'json'

module Search
  # Search provided by API http://cep.la/
  class CepService
    def initialize(cep)
      @cep = cep
    end

    def search
      res = RestClient.get "http://cep.la/#{@cep}", { accept: :json }
      value = JSON.parse(res.body)
      Address.create(value)
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end
