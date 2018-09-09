class BoardsController < ApplicationController
  def show
  	create_random_user
  	@board = Board.first
  end

  private
    def create_random_user
    	User.create_random_user
    end
end
