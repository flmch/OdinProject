class User < ActiveRecord::Base
	validates :name, length: { minimum: 2,
								maximum: 20
								}

	has_many :posts
	has_many :comments
end
