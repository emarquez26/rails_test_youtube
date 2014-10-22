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

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
