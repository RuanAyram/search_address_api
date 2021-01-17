class Endereco < ApplicationRecord
  def format
    {
      endereco_completo: "#{logradouro}, #{bairro}, #{cidade} - #{uf}", 
      logradouro: logradouro,
      bairro: bairro,
      cidade: cidade,
      uf: uf
    }
  end
end
