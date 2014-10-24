FactoryGirl.define do
  
  factory :like do
    video_id "kffa4xfA7G4"
  end

  factory :dislike do
    video_id "kffa4xfA7G4"
  end

  factory :user do
    email "user@gmail.com"
    name "Luis"
    password "1234567890"
    password_confirmation "1234567890"
  end
end