class RegistrationsController < Devise::RegistrationsController
  respond_to :json
  def create
    user = User.new(params[:user])
    if user.save
      data = {
        user_id: user.id,
        auth_token: user.authentication_token
      }
      render json: data, status: 201
      return
    else
      warden.custom_failure!
      render :json=> {errors: user.errors}, :status=>422
    end
  end
end