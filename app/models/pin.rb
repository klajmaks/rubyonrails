class Pin < ApplicationRecord
  acts_as_votable
  Paperclip.options[:command_path] = 'C:\Program Files\ImageMagick-7.0.7-Q16'
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
