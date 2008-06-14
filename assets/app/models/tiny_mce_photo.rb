class TinyMcePhoto < ActiveRecord::Base
  has_attachment  :storage => :file_system,
                  :content_type => [:image, 'application/x-shockwave-flash'],
                  :max_size => 5.megabytes,
                  :resize_to => '600x>',
                  :thumbnails => {:thumb => "100>", :medium => "290x320>", :large => "664>"},
                  :processor => :MiniMagick,
                  :path_prefix => 'public/tiny_mce'

  validates_as_attachment

  belongs_to :user
  
  def display_name
    self.name ? self.name : self.created_at.strftime("created on: %m/%d/%y")
  end
end