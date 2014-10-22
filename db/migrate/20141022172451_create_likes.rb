class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :user_email
      t.string :video_id

      t.timestamps
    end
  end
end
