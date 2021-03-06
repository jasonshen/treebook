class Status < ActiveRecord::Base
# Added user_id as a thing you make accessible in a form post
  attr_accessible :content, :user_id
# Calling one of the attributes of the class, associating a status with user
  belongs_to :user
  validates :content, presence: true,
              length: { minimum: 2 }
              
  validates :user_id, presence: true
end
