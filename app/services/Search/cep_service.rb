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
      result = JSON.parse(res.body)
      save_address(result) if result.present?
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end

    def save_address(result)
      if result.instance_of?(Array)
        result.each do |record|
          creation(record)
        end
      else
        creation(result)
      end
    end

    def creation(param)
      Address.create(street: param['logradouro'],
                     neighborhood: param['bairro'], city: param['cidade'],
                     uf: param['uf'], cep: param['cep'])
    end
  end
end
