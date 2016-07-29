class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTpeo_EKa2Sd9ZstbR-dKsqgLoijbeYlCMFVikOwdehcz2HV8MTDTyh1Ag"
         validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
