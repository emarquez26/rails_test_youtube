class WelcomeController < ApplicationController
  def index  
    client = YouTubeIt::Client.new(:dev_key => ENV['youtuve_key'])
    @video_information = client.videos_by(:most_viewed, page: params[:id])
    Video.new.video
    @like = Like.all
  end
end
