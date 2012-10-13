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
  
  has_one :profile
  has_many :games
  has_many :profile_comments
  has_and_belongs_to_many :usergroup
  
  
  def has_group?(rolename) 
	  self.usergroup.find_by_user_title(rolename) ? true : false
  end
  
  def is_admin?
	  has_group?('Admin')
  end
  
  def is_guest?
	  has_group?('Guest')
  end
  
  def name
	  self.username
  end
  
  def ensure_profile
	  if self.profile.nil?
		  	profile = Profile.new()
		  	profile.user_id = self.id
		  	profile.save
		  	self.profile = profile#Profile.new(:user_id => @user.id)
		  	self.save 
	  end
	  self.profile
  end
  
  
end
