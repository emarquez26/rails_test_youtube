class LikesController < ApplicationController
  
  def index
    @client = YouTubeIt::Client.new(:dev_key => ENV['youtuve_key'])
    @select_dates = Like.where(user_email: current_user.email)
  end

  def create
    @save_like = Like.create({video_id: params[:video_id], user_email: current_user.email})
    render nothing: true
  end

  def destroy
    @destroy = Like.destroy({video_id: params[:video_id]})
  end
end