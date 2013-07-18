module Api
  module V1
    class ComicsController < BaseController
      def create
        comic = Comic.new(prompt_one_id: params[:prompt_one_id], prompt_two_id: params[:prompt_two_id])
        if comic.save
          data = {
            id: comic.id
          }
          render json: data, status: 201 
        else
          render json: {user: comic.errors}, status: 422
        end
      end
    end
  end
end
