module Api
  module V1
    class ComicsController < BaseController

      before_filter :wrap_params, :only => [:create]

      def create
        comic = Comic.new(params[:comic])
        if comic.save
          data = {
            id: comic.id
          }
          render json: data, status: 201 
        else
          render json: {user: comic.errors}, status: 422
        end
      end

      private

      def wrap_params
        image = params[:comic][:image]
        params[:comic] = {
          image: image,
          prompt_one_id: params[:prompt_one_id],
          prompt_two_id: params[:prompt_two_id],
          user: current_user
        }
      end

    end
  end
end
