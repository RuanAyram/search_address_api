# frozen_string_literal: true

class Address < ApplicationRecord
  def format
    {
      complete_address: "#{street}, #{neighborhood}, #{city} - #{uf}",
      street: street,
      neighborhood: neighborhood,
      city: cidade,
      uf: uf
    }
  end
end
