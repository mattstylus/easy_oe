class Image < ActiveRecord::Base
  has_attachment  :content_type => :image, 
                  :storage => :file_system, 
                  :max_size => 800.kilobytes,
                  :resize_to => [300 ,300],
                  :thumbnails => { :medium => [66, 66], :small => [60, 40] }

  validates_as_attachment
end
