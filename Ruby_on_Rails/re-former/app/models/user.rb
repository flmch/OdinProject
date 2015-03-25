class User < ActiveRecord::Base
	validates :username, presence: true,
						 uniqueness: true,
					     length: { minimum: 2, maximum: 15 }
	validates :email,    presence: true		
	validates :password, presence: true		     
end
