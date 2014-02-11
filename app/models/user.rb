class User < ActiveRecord::Base
	has_many :tweets
	
	has_many :followeeships, foreign_key: :follower_id, class_name: 'Followship'
	has_many :followerships, foreign_key: :followee_id, class_name: 'Followship'

	has_many :followers, through: :followerships, source: :follower
	has_many :followees, through: :followeeships, source: :followee
end
