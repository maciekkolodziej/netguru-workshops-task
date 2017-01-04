class User < ActiveRecord::Base
  devise :database_authenticatable, :trackable, :recoverable, :validatable, :rememberable, :registerable
end
