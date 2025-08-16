class CreatePsicologos < ActiveRecord::Migration[7.2]
  def change
    create_table :psicologos do |t|
      t.string :nome
      t.string :email
      t.string :password_digest
      t.string :telefone
      t.string :crp
      t.string :cpf
      t.string :endereco
      t.date :data_nascimento
      t.string :especialidade

      t.timestamps
    end
    add_index :psicologos, :email, unique: true
  end
end
