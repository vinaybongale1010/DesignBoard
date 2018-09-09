class User < ApplicationRecord
	has_many :board_edits
	has_many :board, through: :board_edits
end
