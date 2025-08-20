class Psicologo < ApplicationRecord
  has_secure_password

  # Validações básicas
  validates :nome, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, if: :password_required?


private

  def password_required?
    password_digest.blank? || !password.nil?
  end
end
