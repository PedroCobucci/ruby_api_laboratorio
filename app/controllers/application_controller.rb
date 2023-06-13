class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken

        before_action :configure_permitted_parameters, if: :devise_controller?          

        protected
        
        def configure_permitted_parameters
          added_attrs = [:email, :password, :password_confirmation, :name, :celular, :sexo, :cpf, :data_nascimento, :acesso, :registration]
          devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
          devise_parameter_sanitizer.permit :account_update, keys: added_attrs
        end
end
