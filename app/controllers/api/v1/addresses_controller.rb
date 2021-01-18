# frozen_string_literal: true

module Api
  module V1
    class AddressesController < ApplicationController
      def show
        @address = Address.find_by(cep: params[:cep])
        @address = Search::CepService.new(cep).search if @address.nil?
        msg = @address.blank? ? { erro: 'CEP não encontrado' } : @address.format
        render json: msg
      end
    end
  end
end
