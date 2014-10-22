# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  user_email :string(255)
#  video_id   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Like < ActiveRecord::Base
  belongs_to :user
end
