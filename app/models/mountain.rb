class Mountain < ActiveRecord::Base
  has_many :trails
  has_many :user_mountains
  has_many :users, through: :user_mountains
end
