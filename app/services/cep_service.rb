require 'rest-client'
require 'json'

class CepService

  def initialize(cep)
    @cep = cep
  end

  def perform
    res = RestClient.get "http://cep.la/#{@cep}", {accept: :json}
    value = JSON.parse(res.body)
    Endereco.create(value)
  rescue RestClient::ExceptionWithResponse => e
    e.response
  end
end