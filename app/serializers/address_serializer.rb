# frozen_string_literal: true

class AddressSerializer < ActiveModel::Serializer
  attributes :cep, :street, :neighborhood, :city, :uf, :complete_address

  def complete_address
    "#{object.street}, #{object.neighborhood}, #{object.city} - #{object.uf} - #{object.cep}"
  end
end
