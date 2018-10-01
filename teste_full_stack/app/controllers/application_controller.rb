class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_comprador!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # HACK: essa função foi necessária, para conseguir aceitar os parametros diferentes
  # da configuração padrão do devise. 
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:comprador, :telefone, :nome])
  end
end
