class PacientesController < ApplicationController
  before_action :set_paciente, only: [ :show, :update, :destroy ]

  # GET /pacientes
  def index
    @pacientes = Paciente.all
    render json: @pacientes
  end

  # GET /pacientes/:id
  def show
    render json: @paciente
  end

  # POST /pacientes
  def create
    @paciente = Paciente.new(paciente_params)
    if @paciente.save
      render json: @paciente, status: :created
    else
      render json: { errors: @paciente.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pacientes/:id
  def update
    if @paciente.update(paciente_params)
      render json: @paciente
    else
      render json: { errors: @paciente.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /pacientes/:id
  def destroy
    @paciente.destroy
    head :no_content
  end

  private

  def set_paciente
    @paciente = Paciente.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Paciente não encontrado" }, status: :not_found
  end

  def paciente_params
    params.require(:paciente).permit(
      :nome, :email, :telefone, :data_nascimento, :observacoes, :psicologo_id
    )
  end
end
