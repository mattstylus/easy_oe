class Listing < ActiveRecord::Base
  belongs_to :category
  has_many :listing_images, :class_name => "ListingImage", :foreign_key => "listing_id"
  acts_as_xapian  :texts  => [:id, :title, :sub_title, :content, :event_date, :created_at, :reference, :location_city, :location_area, :location_postcode, :category_id, :type_id],
                  :terms  => [[:category_id, 'C', "category"], [:type_id, 'T', "type"]],
                  :values => [[:created_at, 0, "created_at", :date]]
end
