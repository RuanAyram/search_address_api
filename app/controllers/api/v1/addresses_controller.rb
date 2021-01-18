# frozen_string_literal: true

module Api
  module V1
    class AddressesController < ApiController
      def index
        if params[:cep].present?
          @address = Address.all.where("cep = '#{params[:cep]}' OR uf = '#{params[:cep]}' OR
                                  city = '#{params[:cep]}' OR neighborhood = '#{params[:cep]}' OR
                                  street = '#{params[:cep]}'")

          @address = Search::CepService.new(params[:cep]).search if @address.first.nil?
          msg = @address.blank? ? { erro: 'CEP não encontrado' } : @address
        else
          msg = { erro: 'Informe o CEP. CEP é obrigatório.' }
        end
        render json: msg
      end
    end
  end
end
