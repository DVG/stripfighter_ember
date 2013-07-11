class RegistrationsController < Devise::RegistrationsController
  respond_to :json
  def create
    user = User.new(params[:user])
    if user.save
      user.ensure_authentication_token!
      user.remember_me!
      data = {
        user_id: user.id,
        auth_token: user.authentication_token,
        remember_token: remember_token(user)
      }
      render json: data, status: 201
      return
    else
      warden.custom_failure!
      render :json=> {errors: user.errors}, :status=>422
    end
  end

  protected

  def remember_token(resource)
    data = resource_class.serialize_into_cookie(resource)
    "#{data.first.first}-#{data.last}"
  end
end