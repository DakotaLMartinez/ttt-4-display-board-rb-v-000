# Define display_board that accepts a board and prints
# out the current state.
board = ["X"," "," "," "," "," "," "," "," "]

def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]} " 
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} " 
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} " 
end

# display_board(board)
# puts board[0]

def full?(board) 
  board.all? {|cell| cell == "X" || cell == "O"}
end
WINCOMBOS = []
def won?(board)
  WINCOMBOS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && (board[combo[0]]) == "X" || board[combo[0]]) == "O")
  end
end
if full?(board) 
  true 
else 
  false 
end

def draw?(board)
  if full?(board) && !won?(board)
    true 
  else
    false 
  end
end