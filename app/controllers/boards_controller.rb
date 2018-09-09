class BoardsController < ApplicationController
  def show
  	@board = Board.first
  end
end
