class BoardsController < ApplicationController

  before_action :create_random_user, only: :show

  def show
  	@board = Board.first
  end

  private
    def create_random_user
    	User.create_random_user
    end
end
