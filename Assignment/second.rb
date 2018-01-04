puts "Enter room length : "
l = gets.to_i
puts "Enter room width : "
w = gets.to_i

tot = l*w

block = tot /144
puts "total block required are #{block}"

cost = (tot*30)+(tot*2)
puts "total cost is #{cost}"
