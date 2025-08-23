class AgendaSerializer < ActiveModel::Serializer
  attributes :id, :date, :start, :end, :status
  has_one :psicologo
  has_one :paciente
end
