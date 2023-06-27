class ExamesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :user_access?, only: %i[ create update destroy ]
  before_action :set_exame, only: %i[ update destroy ]

  # GET /exames
  def index
    exame_proxy = ExameProxy.new(current_usuario)

    exames = exame_proxy.getAllExames

    render json: exames
  end

  # GET /exames/1
  def show
    exame_proxy = ExameProxy.new(current_usuario)
    exame_proxy.set_result_strategy(NonNullResultStrategy.new)
    exames = exame_proxy.getExame(params[:id])

    render json: exames
  end

  # POST /exames
  def create

    @exame = Exame.new(exame_params)

    paciente = Usuario.find_by(cpf: params[:paciente_cpf])

    if paciente.nil?
      render json: { error: 'Paciente não encontrado' }, status: :not_found
      return
    end

    @exame.paciente_id = paciente.id

    if @exame.save
      render json: @exame, status: :created, location: @exame
    else
      render json: @exame.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exames/1
  def update
    if @exame.update(exame_params)
      render json: @exame
    else
      render json: @exame.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exames/1
  def destroy
    if @exame.destroy
      head :no_content
    else
      render json: { error: 'Failed to delete the record' }, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exame
      @exame = Exame.find(params[:id])
    end

    def user_access?
      if current_usuario.acesso == 'funcionario'
        return true
      else
        render json: {error: 'Unauthorized'}, status: :unauthorized
        return false
      end
    end

    # Only allow a list of trusted parameters through.
    def exame_params
      params.require(:exame).permit(:resultado, :descricao, :anexo, :data)
    end
end
