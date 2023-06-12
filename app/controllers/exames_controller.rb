class ExamesController < ApplicationController
  before_action :set_exame, only: %i[ show update destroy ]

  # GET /exames
  def index
    @exames = Exame.all

    render json: @exames
  end

  # GET /exames/1
  def show
    render json: @exame
  end

  # POST /exames
  def create
    @exame = Exame.new(exame_params)

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
    @exame.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exame
      @exame = Exame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exame_params
      params.require(:exame).permit(:resultado, :descricao, :anexo)
    end
end
