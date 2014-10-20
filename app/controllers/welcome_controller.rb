require 'youtube_it'
class WelcomeController < ApplicationController
  def index  
  client = YouTubeIt::Client.new(:dev_key => ENV['youtuve_key'])  
  #binding.pry
  @info= client.videos_by(:most_viewed)
  #@info.videos.first.unique_id
  #@info.videos.first.description
  end
end
