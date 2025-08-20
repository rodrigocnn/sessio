class PsicologoSerializer < ActiveModel::Serializer
  attributes :id, :nome, :email, :telefone, :crp, :cpf, :endereco, :data_nascimento, :especialidade
end
