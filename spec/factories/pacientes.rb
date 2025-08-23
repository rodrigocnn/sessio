FactoryBot.define do
  factory :paciente do
    nome { "João Silva" }
    email { "joao.silva@example.com" }
    telefone { "(11) 91234-5678" }
    data_nascimento { "1990-04-15" }
    observacoes { "Paciente com ansiedade leve" }

    # associação com psicólogo
    association :psicologo
  end
end
