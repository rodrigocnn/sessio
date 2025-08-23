class Agenda < ApplicationRecord
  belongs_to :psicologo
  belongs_to :paciente


  validate :start_must_be_before_end

  def start_must_be_before_end
    if start.present? && self.end.present? && start >= self.end
      errors.add(:start, "Horário inicial não pode ser maior ou igual ao horário de término")
    end
  end
end
