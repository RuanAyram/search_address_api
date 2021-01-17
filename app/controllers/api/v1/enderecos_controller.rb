class Api::V1::EnderecosController < ApplicationController
  def show
    cep = params[:id]
    @endereco = Endereco.find_by(cep: cep)
    if @endereco.nil?
      @endereco = CepService.new(cep).perform
    end
    render json: @endereco.blank? ? "CEP não encontrado" : @endereco.format
  end
end
