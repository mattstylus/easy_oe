class Category < ActiveRecord::Base
  validates_presence_of :description, :on => :create, :message => "can't be blank"
  validates_uniqueness_of :description, :on => :create, :message => "must be unique"
  
  # belongs_to :category, :class_name => "Category", :foreign_key => "parent_id"
  has_many :categories, :foreign_key => "parent_id"
  has_many :types
  has_many :listings
end
