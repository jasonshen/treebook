class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  				:first_name, :last_name, :profile_name
  # attr_accessible :title, :body

  # defining a full name
  def full_name
      first_name + " " + last_name
  end

# added for making our tests work
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true, 
                                    uniqueness: true,
                                    format: {
                                      with: /^[a-zA-Z0-9_-]+$/,
                                      message: "must be formatted correctly."
                                    }



  # has many status

  has_many :statuses


end