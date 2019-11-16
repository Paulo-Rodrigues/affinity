class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def after_sign_up_path_for(user)
    profile_path(user)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :account_update, keys: [
        :username, :first_name, :last_name,
        :bio, :email, :password, :password_confirmation
      ]
    )
  end
end
