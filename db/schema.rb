# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_08_23_134523) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.bigint "psicologo_id", null: false
    t.bigint "paciente_id", null: false
    t.date "date"
    t.time "start"
    t.time "end"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_agendas_on_paciente_id"
    t.index ["psicologo_id"], name: "index_agendas_on_psicologo_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.bigint "psicologo_id", null: false
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.date "data_nascimento"
    t.text "observacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["psicologo_id"], name: "index_pacientes_on_psicologo_id"
  end

  create_table "psicologos", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "password_digest"
    t.string "telefone"
    t.string "crp"
    t.string "cpf"
    t.string "endereco"
    t.date "data_nascimento"
    t.string "especialidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_psicologos_on_email", unique: true
  end

  create_table "sessaos", force: :cascade do |t|
    t.bigint "psicologo_id", null: false
    t.bigint "paciente_id", null: false
    t.date "data_sessao"
    t.text "resumo"
    t.text "observacoes_comportamentais"
    t.text "intervencoes_realizadas"
    t.text "reacoes_paciente"
    t.text "encaminhamentos"
    t.text "planos_terapeuticos"
    t.text "hipoteses_diagnosticas"
    t.string "tecnica_utilizada"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_sessaos_on_paciente_id"
    t.index ["psicologo_id"], name: "index_sessaos_on_psicologo_id"
  end

  add_foreign_key "agendas", "pacientes"
  add_foreign_key "agendas", "psicologos"
  add_foreign_key "pacientes", "psicologos"
  add_foreign_key "sessaos", "pacientes"
  add_foreign_key "sessaos", "psicologos"
end
