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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video do
    video_id "MyString"
    video_name "MyString"
    video_description "MyText"
    video_image "MyString"
  end
end
