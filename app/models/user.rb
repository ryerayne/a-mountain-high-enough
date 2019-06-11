class User < ActiveRecord::Base
  has_secure_password

  has_many :user_mountains
  has_many :mountains, through: :user_mountains
  has_many :user_trails
  has_many :trails, through: :user_trails
end
