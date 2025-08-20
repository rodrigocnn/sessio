class CreatePacientes < ActiveRecord::Migration[7.2]
  def change
    create_table :pacientes do |t|
      t.references :psicologo, null: false, foreign_key: true
      t.string :nome
      t.string :email
      t.string :telefone
      t.date :data_nascimento
      t.text :observacoes

      t.timestamps
    end
  end
end
