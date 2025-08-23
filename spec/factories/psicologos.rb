FactoryBot.define do
  factory :psicologo do
    nome { "Dra. Maria" }
    email { "maria.psicologa@example.com" }
    password { '1245a3' }
    telefone { "(11) 98888-7777" }
    crp  { "0/654321" }
    especialidade { "Terapia Cognitivo-Comportamental" }
  end
end
