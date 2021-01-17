class CreateEnderecos < ActiveRecord::Migration[6.0]
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.string :uf
      t.string :cidade
      t.string :bairro
      t.string :logradouro

      t.timestamps
    end
  end
end
