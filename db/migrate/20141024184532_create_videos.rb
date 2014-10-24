class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :video_id
      t.string :video_name
      t.text :video_description
      t.string :video_image

      t.timestamps
    end
  end
end
