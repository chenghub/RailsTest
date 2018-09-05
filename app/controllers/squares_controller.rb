class SquaresController < ApplicationController
  def list

    @id = session[:user_id]

    if UserSquare.where(userId: @id).empty?
      #display all from Square
      @squares = Square.where(defaultStatus: 't')

      #copy all with userId to UserSquare
      @copySquares = Square.where(defaultStatus: 't')
      puts @copySquares
      @copySquares.each do |cs|
        UserSquare.create(userId: @id, squareId: cs.id)
      end

    end

    @ids = UserSquare.select("squareId").where(userId: @id)
    @squares = Square.where(id: @ids)
  end

  def new
  end

  def update
  end


  def show
  end

  def destroy
  end
end
