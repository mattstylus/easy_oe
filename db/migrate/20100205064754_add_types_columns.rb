class AddTypesColumns < ActiveRecord::Migration
  def self.up
    add_column :types, :title, :string
    add_column :types, :url, :string
    add_column :types, :order, :integer
  end

  def self.down
    remove_column :types, :title
    remove_column :types, :url
    remove_column :types, :order
  end
end
