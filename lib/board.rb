require 'pry'

class Board

  def initialize
    @board = Array.new(10) {Array.new(10,0)}
    @width = @board[0].length
    @height = @board[0][0].length
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

  def neighborhood(x,y)
    neighborhood = []
    neighborhood << [(x + 1) % @width, (y + 1) % @height]
    neighborhood << [(x + 1) % @width, (y - 1) % @height]
    neighborhood << [(x - 1) % @width, (y - 1) % @height]
    neighborhood << [(x - 1) % @width, (y + 1) % @height]
    neighborhood << [x, (y + 1) % @height]
    neighborhood << [x, (y - 1) % @height]
    neighborhood << [(x + 1) % @width, y]
    neighborhood << [(x - 1) % @width, y]
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

