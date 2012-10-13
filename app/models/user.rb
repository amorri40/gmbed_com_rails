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
  validates_format_of :username, :with => /^[A-Za-z\d_]+$/
  
  has_one :profile
  has_many :games
  has_many :profile_comments
  has_and_belongs_to_many :usergroup
  has_many :favourite_games
  
  def has_group?(rolename) 
	  self.usergroup.find_by_user_title(rolename) ? true : false
  end
  
  def is_admin?
	  has_group?('Admin')
  end
  
  def is_guest?
	  has_group?('Guest')
  end
  
  #name function will return the username
  def name
	  self.username
  end
  
  # ensure_profile makes sure a profile exists for this user (backwards compatibility)
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
  
  # hasfav? will return whether this user has a favourite game with that id
  def has_fav?(game_id)
	  FavouriteGame.where(:user_id => self.id, :game_id => game_id).empty?
  end
  
  # created_game? will return whether this user is the author of game_id
  def created_game?(game_id)
      not Game.where(:id => game_id, :author => self.username).empty?
  end
  
  
end
