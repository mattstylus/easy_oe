class ListingImage < ActiveRecord::Base
  belongs_to :listing, :class_name => "Listing", :foreign_key => "listing_id"
end
