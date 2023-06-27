class UsersController < ApplicationController
    before_action :authenticate_usuario!
    before_action :check_access
    before_action :set_usuario, only: %i[ update show destroy ]

    def index
      @user = Usuario.all

      render json: @user
    end

    def show
        if @usuario
            render json: @usuario
          else
            render json: @usuario.errors, status: :unprocessable_entity
        end
    end

    def update
        if @usuario.update(usuario_params)
            render json: @usuario
          else
            render json: @usuario.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @usuario.destroy
    end

    def getUsuarioByCPF
      begin
        user = Usuario.find_by(cpf: params[:cpf])

        raise StandardError, "No customer found with this CPF" unless user

        render json: user
      rescue => e
        render json: { error: e.message }, status: :unprocessable_entity
      end
    end

    def checkPassword
      if current_usuario.valid_password?(params[:password])
        render json: { valid_password: true }, status: :ok
      else
        render json: { valid_password: false }, status: :unprocessable_entity
      end
    end

    private

    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    def usuario_params
        params.permit(:name, :celular, :sexo, :cpf, :data_nascimento, :endereco, :id)
    end

    def check_access
        unless current_usuario.acesso == 'funcionario'
            render json: { error: 'Unauthorized' }, status: :unauthorized
        end
    end
  
  end
  