class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  #Deviseが用意しているメソッドで、サインイン後にどこに遷移するかを設定しているメソッド
  def after_sign_in_path_for(resource)
    post_images_path
  end

  #サインアウト後にどこに遷移するかを設定するメソッド
  def after_sign_out_path_for(resource)
    about_path
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end


