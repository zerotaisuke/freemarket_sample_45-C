class ApplicationController < ActionController::Base
  # before_action :configure_permitted_paramaters, if: :devise_controller?
  #
  # private
  # def configure_permitted_paramaters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:userinfo_attributes => [:name]])

    # update処理で使うかもしれないので一旦保存
    # devise_parameter_sanitizer.permit(:account_update, keys: [:profile_attributes => [:user_id, :name, :body]])
  # end

end
