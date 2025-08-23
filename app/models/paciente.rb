class Paciente < ApplicationRecord
  belongs_to :psicologo

  validates :nome, presence: true
  validates :email, presence: true
  validates :telefone, presence: true
  validates :psicologo_id, presence: true
end
