puts "Enter room length : "
l = gets.to_f
puts "Enter room width : "
w = gets.to_f

tot = l*w
block = 0.0
block = tot.to_f / 144

b = block.to_s.split('.')
no = b[1].to_i
rem = block - no



puts "total block required are #{block}"

cost = (no*30)+(no*2)+(rem*30)+(rem*2)
puts "total cost is #{cost}"
