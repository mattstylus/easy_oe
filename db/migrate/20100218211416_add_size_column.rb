class AddSizeColumn < ActiveRecord::Migration
  def self.up
    add_column :listing_images, :size, :string
  end

  def self.down
    remove_column :listing_images, :size
  end
end
