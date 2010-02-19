class CreateListings < ActiveRecord::Migration
  def self.up
    create_table :listings do |t|
      t.integer :category_id
      t.string :title
      t.string :sub_title
      t.string :location_city
      t.string :location_area
      t.string :location_postcode
      t.datetime :event_date
      t.integer :type_id
      t.string :contact_email_address
      t.string :contact_name
      t.integer :user_id
      t.text :content
      t.string :reference
      t.string :contact_number

      t.timestamps
    end
  end

  def self.down
    drop_table :listings
  end
end
