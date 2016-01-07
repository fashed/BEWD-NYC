class User < ActiveRecord::Base
	has_many :photos
	validates :email, uniqueness: true, on: :create
end
