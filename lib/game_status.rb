# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def won?(board)
  if !board.include?("X")
    false
  end
  WIN_COMBINATIONS.each do |win_combo|
    board_check = [board[win_combo[0]], board[win_combo[1]], board[win_combo[2]]]
    if board_check.all? {|space| space == "X"} || board_check.all? {|space| space == "O"}
      return win_combo
    else
      false
    end
  end
end

def full?(board)
  board.each do |spot|
    if spot == "X" || spot == "O"
      true
    end
  end
end
