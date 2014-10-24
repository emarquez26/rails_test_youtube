# == Schema Information
#
# Table name: videos
#
#  id                :integer          not null, primary key
#  video_id          :string(255)
#  video_name        :string(255)
#  video_description :text
#  video_image       :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class Video < ActiveRecord::Base
  def video
    client = YouTubeIt::Client.new(:dev_key => ENV['youtuve_key'])
    Video.destroy_all
    1.upto(7) do |video_page|
      client.videos_by(:most_viewed, page: video_page).videos.each do |video|
        Video.create(
          video_id: video.unique_id, video_name: video.title,
          video_description: video.description, video_image: video.thumbnails[1].url
        )
      end
    end
  end
end
