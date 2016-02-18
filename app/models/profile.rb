class Profile < ActiveRecord::Base
  belongs_to :user

  has_attached_file :avatar, styles: { medium: '300x300>', small: '100x100', thumb: '50x50#' }, default_url: '/images/:style/missing.png'
  crop_attached_file :avatar
  # crop_attached_file :snapshot, :aspect => "16:9"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # validates_attachment :avatar,
  #                      content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
