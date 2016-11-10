class User < ApplicationRecord

  mount_uploader :profile_photo, ProfilePhotoUploader
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates_inclusion_of :is_student, in: [true, false]
  has_many :microposts

  acts_as_messageable

  def name
    "#{first_name} "
  end

  def mailboxer_email(object)
    return "define_email@on_your.model"
  end

  def feed
    Micropost.where("user_id = ?", id)
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
