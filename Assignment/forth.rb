odd=0
even=0
puts "how many number you want to enter?"
nom = gets.to_i
array = Array.new(nom-nom) 
i=0
while i<nom

	puts "Enter number"
	array.push(gets.to_i)

	i+=1
end
	array.each { |n|

       if((n.to_i % 2) == 0)

            even+=1
        else
           	odd+=1

        end


}	
p array
        puts "total odds are #{odd} and total evens are #{even} size is"+array.size.to_s