class CreateSubPages < ActiveRecord::Migration
  def self.up
    create_table :sub_pages do |t|
      t.integer :page_id
      t.string :title
      t.text :content
      t.integer :order
      t.string :location_title
      t.string :location_city
      t.string :location_area
      t.string :location_postcode

      t.timestamps
    end
  end

  def self.down
    drop_table :sub_pages
  end
end
