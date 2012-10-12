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
  
  validates_uniqueness_of :username
  
  has_many :games
  has_and_belongs_to_many :usergroup
  
  
  def has_group?(rolename) 
	  self.usergroup.find_by_user_title(rolename) ? true : false
  end
  
  def is_admin?
	  has_group?('Admin')
  end
  
  def name
	  self.username
  end
  
  
  
end
