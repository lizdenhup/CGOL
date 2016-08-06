class Board

  def initialize
    @board = Array.new(10) {Array.new(10,0)}
  end

  def living_cells
    living_cells = []
    @board.each do |row| 
      row.each_index.select { |index| row[index] == 1 }
    end
    living_cells 
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

