class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "600x600>", :thumb => "100x100>" }, :default_url => "sad_panda.jpg"

  validates :description, presence: true
  validates_attachment_content_type :image,
                                    :content_type => ["image/jpg", "image/gif", "image/png"],
                                    :size => { :in => 0..2.megabytes }
end
