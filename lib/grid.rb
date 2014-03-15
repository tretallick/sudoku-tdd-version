class Grid

  attr_accessor :cells, :empty_board

  def initialize(puzzle)
    @cells = puzzle.chars.map { |s| s.to_i }
    @empty_board = Array.new(9) { Array.new(9, "") }
  end 

  def cell_solved?(cell_index)
    @cells[cell_index] == 0 ? false : true
  end

  def all_cells_solved?
    @cells.all? { |cell| cell != 0 }
  end

  # Need a solve method at some point
  # def solve; end

   def row_neighbours(cell_index) 
    row_index = cell_index / 9
    a = row_index * 9 # defines startpoint for a row
    b =  a + 8  # defines end point for a row
    neighbours = []
    neighbours << @cells[a..b] 
    neighbours.flatten!
    neighbours.delete_at(cell_index - a)
    neighbours
  end

end

