class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "https://c2.staticflickr.com/6/5049/5236758661_9501985314_b.jpg"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
