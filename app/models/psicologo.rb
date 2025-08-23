class Psicologo < ApplicationRecord
  has_secure_password


  validates :nome, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, if: :password_invalid?
  validates :crp, presence: true
  validates :especialidade, presence: true

private

  def password_invalid?
    password_digest.blank? || !password.nil?
  end
end
