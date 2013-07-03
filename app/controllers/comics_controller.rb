class ComicsController < ApplicationController
  respond_to :json

  def create
    respond_with Comic.create(params[:comic])
  end
end
