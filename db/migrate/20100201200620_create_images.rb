class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.integer :category_id
      t.string :description
      t.integer :link_type_id
      t.string :link
      t.string :caption
      t.integer :parent_id
      t.integer :size
      t.integer :width
      t.integer :height
      t.string :content_type
      t.string :filename
      t.string :thumbnail

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
