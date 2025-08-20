class Sessao < ApplicationRecord
  belongs_to :psicologo
  belongs_to :paciente
end
