class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9," ")
  end

  WIN_COMBINATIONS = [
    [0,1,2], #Top row
    [3,4,5], #Middle row
    [6,7,8], #Bottom row
    [0,3,6], #left column
    [1,4,7], #middle column
    [2,5,8], #right column
    [0,4,8], #Left diagonal
    [2,4,6]  #Right diagonal
  ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
      user_input.to_i - 1
    end

    def move(position, char)
      @board[position] = char
    end

    def position_taken?(index_i)
    ((@board[index_i] == "X") || (@board[index_i] == "O"))

    def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end

  

end
