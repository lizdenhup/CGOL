require 'pry'

class Board

  def initialize
    @board = Array.new(3) {Array.new(3,0)}
    @board[0][0] = 1
    @board[1][0] = 1
    @board[2][1] = 1
    @board 
  end

  def living_cells
    @living_cells = []
    @board.each_with_index do |row, row_index|
      if row.include?(1)
        row.each_index.select { |column_index| row[column_index] == 1 }.each do |non_zero_column_index|
          @living_cells << [row_index, non_zero_column_index]
        end  
      end 
    end 
      @living_cells 
  end 

  def neighborhood
#    neighborhood = 
  end 


  def born
# a cell is born if it has 3 neighbors
  end 

  def lives_on
# a cell lives on if it has 2 or 3 neighbors
  end 

  def dies

  end 

end 

test = Board.new.living_cells
binding.pry 

