class AddCategoryColumns < ActiveRecord::Migration
  def self.up
    add_column :categories, :order, :integer
    add_column :categories, :title, :string
  end

  def self.down
    remove_column :categories, :title
    remove_column :categories, :order
  end
end
