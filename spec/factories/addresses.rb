# frozen_string_literal: true

FactoryBot.define do
  factory :address do
    cep { '19430990' }
    uf { 'SP' }
    city { 'Marabá Paulista' }
    neighborhood { nil }
    street { 'Posto de Atendimento à Saúde Bairro Areia Branca - Areia Branca' }
  end
end
