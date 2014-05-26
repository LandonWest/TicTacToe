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
    #POSSIBLE "X" WINS:
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
    #POSSIBLE "O" WINS:
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

  elsif
    #Check all three rows, if they are all NOT .empty?, then puts "Tie!"
    board[0].any? { |space| space.empty? } == false &&
    board[1].any? { |space| space.empty? } == false &&
    board[2].any? { |space| space.empty? } == false
    puts "It's a TIE!"
    puts "GAME OVER"
    exit
  end


  turn += 1

end
