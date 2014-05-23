puts "Welcome to tic-tac-toe!"

board = [
  ['','',''],
  ['','',''],
  ['','','']
]

puts "You're move..."
puts "Enter row"
row = gets.to_i
puts "Enter column"
column = gets.to_i
board[row][column] = "X"

#the following lines are not finished, you need to enter in all of the possibilites for "x" winning, then all the possibilities for "O" winning.

# if board[0][0].eql?("X") and board[0][1].eql?("X") and board[0][2].eql("X") or....
# puts "X wins!"
# exit()

puts "You're move..."
puts "Enter row"
row = gets.to_i
puts "Enter column"
column = gets.to_i
board[row][column] = "O"
