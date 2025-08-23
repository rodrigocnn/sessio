require 'rails_helper'

RSpec.describe Paciente, type: :model do
   it "should create a paciente with all  attributes" do
    paciente = create(:paciente)
    expect(paciente).to be_valid
  end

    context "Validations" do
      it "does not allow blank name" do
        paciente = build(:paciente, nome: "")
        expect(paciente).to_not be_valid
      end

      it "does not allow blank email" do
        paciente = build(:paciente, email: "")
        expect(paciente).to_not be_valid
      end

      it "does not allow blank telefone" do
        paciente = build(:paciente, telefone: "")
        expect(paciente).to_not be_valid
      end

      it "does not allow blank data de nascimento" do
        paciente = build(:paciente, data_nascimento: "")
        expect(paciente).to_not be_valid
      end

      it "does not allow blank psicologo" do
        paciente = build(:paciente, psicologo_id: "")
        expect(paciente).to_not be_valid
      end
    end
end
