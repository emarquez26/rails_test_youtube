class LikesController < ApplicationController
  
  def index
    @client = YouTubeIt::Client.new(:dev_key => ENV['youtube_key'])
    @select_dates = Like.where(user_email: current_user.email)
    @like_videos_count = Like.all
  end

  def create
    Like.create(video_id: params[:video_id], user_email: current_user.email)
    render nothing: true
  end

  def destroy
    Like.find_by(video_id: params[:id], user_email: current_user.email).destroy
  end
end