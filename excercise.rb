puts "Enter any number"
no = gets.to_i

arr = ["+","-","*","/"]


data =  arr.repeated_permutation(no-1).to_a

input = (1..no).to_a



final = Array.new





for i in 0..data.length-1

	temp = Array.new
	op = data[i].to_a
	opindex=0
	inputindex=0
	
	datalen = data[i].to_a.length 
	inuputlen =  input.length
	totlen = datalen+inuputlen

	for l in 0..totlen-1

		if(l%2==0)
				temp.push(input[inputindex])
				inputindex+=1
		else
				temp.push(op[opindex])
				opindex+=1	
		end

	end

	final.push(temp)



end
for i in 0..final.length-1
tmpans =0 

j=0
	tmp = Array.new
	ftmp = Array.new

	for q in 0..final[i].length-1
	tmp[q] = final[i][q]

	end
	for q in 0..final[i].length-1
	ftmp[q] = final[i][q]

	end


	

	while (j<=tmp.length-3)


		tmpans = tmp[j].to_f.method(tmp[j+1]).(tmp[j+2]).to_f
		tmp[j+2] = tmpans.to_s
		j+=2
		

	end
		if(tmpans == 0 || tmpans == no)

		p  ftmp 
		puts "ans = " +tmpans.to_s

		end


end


