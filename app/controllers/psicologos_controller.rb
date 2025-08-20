class PsicologosController < ApplicationController
  before_action :set_psicologo, only: %i[ show update destroy ]

  # GET /psicologos
  def index
    @psicologos = Psicologo.all

    render json: @psicologos
  end

  # GET /psicologos/1
  def show
    render json: @psicologo
  end

  # POST /psicologos
  def create
    @psicologo = Psicologo.new(psicologo_params)

    if @psicologo.save
      render json: @psicologo, status: :created, location: @psicologo
    else
      render json: @psicologo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /psicologos/1
  def update
    if @psicologo.update(psicologo_params)
      render json: @psicologo
    else
      render json: @psicologo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /psicologos/1
  def destroy
    @psicologo.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psicologo
      @psicologo = Psicologo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def psicologo_params
      params.require(:psicologo).permit(
      :nome, :email, :password, :password_confirmation,
      :telefone, :crp, :cpf, :endereco, :data_nascimento, :especialidade
    )
    end
end
