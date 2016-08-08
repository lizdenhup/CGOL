require 'pry'

class Board

  def initialize
    @board = Array.new(10) {Array.new(10,0)}
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

  def neighborhood(cell)
    # cell is an array containing the x,y indices of position of interest
    neighborhood = []
    

    end 
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

