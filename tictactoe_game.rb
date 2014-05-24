puts "Welcome to tic-tac-toe!"

board = [
  ['','',''],
  ['','',''],
  ['','','']
]

turn = 0

while turn <= 9

  if turn.even?
    player = "X"
  else
    player = "O"
  end


  puts "You're move #{player}..."
  puts "Enter a row (1-3)"
  row = gets.to_i - 1
  puts "Enter a column (1-3)"
  column = gets.to_i - 1

  if board[row][column].empty?
    board[row][column] = "#{player}"
  else
    puts "Sorry, that space is taken already."
  end

  if
    #horizontal wins
    board[0][0].eql?("X") && board[0][1].eql?("X") && board[0][2].eql?("X") ||
    board[1][0].eql?("X") && board[1][1].eql?("X") && board[1][2].eql?("X") ||
    board[2][0].eql?("X") && board[2][1].eql?("X") && board[2][2].eql?("X") ||
    #verticle wins
    board[0][0].eql?("X") && board[1][0].eql?("X") && board[2][0].eql?("X") ||
    board[0][1].eql?("X") && board[1][1].eql?("X") && board[2][1].eql?("X") ||
    board[0][2].eql?("X") && board[1][2].eql?("X") && board[2][2].eql?("X") ||
    #diagonal wins
    board[0][0].eql?("X") && board[1][1].eql?("X") && board[2][2].eql?("X") ||
    board[0][2].eql?("X") && board[1][1].eql?("X") && board[2][0].eql?("X")
    puts "X WINS!"
    puts "GAME OVER"
    exit

  elsif
    #horizontal wins
    board[0][0].eql?("O") && board[0][1].eql?("O") && board[0][2].eql?("O") ||
    board[1][0].eql?("O") && board[1][1].eql?("O") && board[1][2].eql?("O") ||
    board[2][0].eql?("O") && board[2][1].eql?("O") && board[2][2].eql?("O") ||
    #verticle wins
    board[0][0].eql?("O") && board[1][0].eql?("O") && board[2][0].eql?("O") ||
    board[0][1].eql?("O") && board[1][1].eql?("O") && board[2][1].eql?("O") ||
    board[0][2].eql?("O") && board[1][2].eql?("O") && board[2][2].eql?("O") ||
    #diagonal wins
    board[0][0].eql?("O") && board[1][1].eql?("O") && board[2][2].eql?("O") ||
    board[0][2].eql?("O") && board[1][1].eql?("O") && board[2][0].eql?("O")
    puts "O WINS!"
    puts "GAME OVER"
    exit
  end


  turn += 1

end


#the following lines are not finished, you need to enter in all of the possibilites for "x" winning, then all the possibilities for "O" winning.

# if board[0][0].eql?("X") and board[0][1].eql?("X") and board[0][2].eql("X") or....
# puts "X wins!"
# exit()
