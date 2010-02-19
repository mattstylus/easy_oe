class CreateListingImages < ActiveRecord::Migration
  def self.up
    create_table :listing_images do |t|
      t.integer :listing_id
      t.integer :image_id
      t.boolean :enabled
      t.string :path
      t.timestamps
    end
  end

  def self.down
    drop_table :listing_images
  end
end
