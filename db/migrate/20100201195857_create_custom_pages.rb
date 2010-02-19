class CreateCustomPages < ActiveRecord::Migration
  def self.up
    create_table :custom_pages do |t|
      t.integer :category_id
      t.string :title
      t.string :sub_title

      t.timestamps
    end
  end

  def self.down
    drop_table :custom_pages
  end
end
