puts "select one of these option ..."
puts " 1. celcious -> farenhit "
puts " 2. farenhit - > celcious "
puts " 3. exit "
op = gets.to_i

case op
	when 1
		puts "Enter celcious : "
		no = gets.to_f
		puts "farenhit of #{no} is "+(((no*9)/5)+32).to_s
		exit
	when 2
		puts "Enter Farenhit : "
		no = gets.to_f
		puts "Celcious of #{no} is "+(((no-32)*5)/9).to_s
		exit
	when 3
		exit
	else
		puts "Invalid Option"
	end