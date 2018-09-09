class Board < ApplicationRecord
	has_many :board_edits
	has_many :users, through: :board_edits
end
