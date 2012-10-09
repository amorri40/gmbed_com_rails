class User < ActiveRecord::Base
  
  has_secure_password

attr_accessible :aim, :bio, :dob, :dst, :email, :homepage, :last_activity, :last_visit, :msn, :occ, :password, :reg_time, :timezone, :username, :yim
  
  validates :email, presence: true
  validates :username, presence: true, length: {maximum: 20}
  validates :password, presence: true, length: {minimum: 5}
  validates_confirmation_of :password
  
  has_many :games
  
end
