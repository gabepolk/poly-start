class User < ActiveRecord::Base
  # has_many :comments
  has_many :videos
  has_many :sounds
end
