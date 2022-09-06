class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:account_update, keys: [:email, :admin, :password, :current_password])
        end

    private
        def is_admin?
            if user_signed_in?
                redirect_to root_path unless current_user.admin?
            else
                redirect_to root_path
            end
        end
end
