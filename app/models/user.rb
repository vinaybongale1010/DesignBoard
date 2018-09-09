class User < ApplicationRecord
	has_many :board_edits
	has_many :board, through: :board_edits

	def self.create_random_user
		create(username: "#{generate_random_user_name}")
	end

	private

		def self.generate_random_user_name
			(0...8).map { ('a'..'z').to_a[rand(26)] }.join
		end
end
