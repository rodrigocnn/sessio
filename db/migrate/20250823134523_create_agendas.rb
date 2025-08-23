class CreateAgendas < ActiveRecord::Migration[7.2]
  def change
    create_table :agendas do |t|
      t.references :psicologo, null: false, foreign_key: true
      t.references :paciente, null: false, foreign_key: true
      t.date :date
      t.time :start
      t.time :end
      t.string :status

      t.timestamps
    end
  end
end
