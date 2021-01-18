# frozen_string_literal: true

class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :cep
      t.string :uf
      t.string :city
      t.string :neighborhood
      t.string :street

      t.timestamps
    end
  end
end
