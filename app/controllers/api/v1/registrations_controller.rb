module Api
  module V1

    class RegistrationsController < BaseController
      respond_to :json


      def create
        user = User.new(params[:user])
        data = {
          user_id: user.id,
          auth_token: user.authentication_token,
        }
        if user.save
          render json: data, status: 201
          return
        else
          warden.custom_failure!
          render :json=> user.errors, :status=>422
        end
      end

      
    end

  end
end