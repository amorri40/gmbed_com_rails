class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :password_digest
  
  #has_secure_password

attr_accessible :aim, :bio, :dob, :dst, :email, :homepage, :last_activity, :last_visit, :msn, :occ, :password, :reg_time, :timezone, :username, :yim
  
  validates :email, presence: true
  validates :username, presence: true, length: {maximum: 20}
  validates :password, presence: true, length: {minimum: 5}
  #validates_confirmation_of :password
  
  has_many :games
  
end
