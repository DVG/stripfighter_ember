class PromptsController < ApplicationController
  respond_to :json

  def index
    respond_with Prompt.all
  end
end
