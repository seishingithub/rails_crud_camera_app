class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.string :brand
      t.string :camera_model
      t.text :reviews
      t.text :sample_image

      t.timestamps
    end
  end
end
