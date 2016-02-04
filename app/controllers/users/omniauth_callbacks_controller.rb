class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    authenticate(:facebook)
  end

  def twitter
    authenticate(:twitter)
  end

  def instagram
    authenticate(:instagram)
  end

  def authenticate(provider)
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => provider.to_s.humanize) if is_navigational_format?
    else
      session["devise.#{provider.to_s}_data"] = request.env["omniauth.auth"].except("extra")
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end