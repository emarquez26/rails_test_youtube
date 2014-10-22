class WelcomeController < ApplicationController
  def index  
    client = YouTubeIt::Client.new(:dev_key => ENV['youtuve_key'])  
    @video_information = client.videos_by(:most_viewed)
    @select_dates = Like.where(user_email: current_user.email)
  end
end
