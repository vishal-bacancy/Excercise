puts "Enter temp for surat "
s = gets.to_s
puts "Enter temp for ahmedabad "
a = gets.to_s
puts "Enter temp for rajkot "
r = gets.to_s
puts "Enter temp for vadodara"
v = gets.to_s

array = Hash.new
snum=""
anum=""
rnum=""
vnum=""
def is_numeric(o)
    true if Integer(o) rescue false
  end
def fetch_num(x)
number =""
i=0
while i < x.size
        if(is_numeric(x[i]) || x[i]==".")
			number+=x[i]
		end
       i+=1  
    end
	return number.to_f

end


#=========for surat

if(s.include?"c")
	no=0
	snum = fetch_num(s)
array["surat"] = (((snum.to_f*9)/5)+32)
else
	snum = fetch_num(s)
	array["surat"] = snum.to_f

end

#======for ahmedabad

if(a.include?"c")
	no=0
	anum = fetch_num(a)
array["ahmedabad"] = (((anum.to_f*9)/5)+32)
else
	anum = fetch_num(a)
	array["ahmedabad"] = anum.to_f

end




#======for rajkot


if(r.include?"c")
	no=0
	rnum = fetch_num(r)
array["rajkot"] = (((rnum.to_f*9)/5)+32)
else
	rnum = fetch_num(r)
	array["rajkot"] = rnum.to_f

end


#======for vadodara

if(v.include?"c")
	no=0
	vnum = fetch_num(v)
array["vadodara"] = (((vnum.to_f*9)/5)+32)
else
	vnum = fetch_num(v)
	array["vadodara"] = vnum.to_f

end

def sort_hash(hj)

akeys = []
avalues = []
for o in 0..hj.size-1
akeys[o] = hj.keys[o]
avalues[o] = hj[hj.keys[o]]



end


for i in 0..avalues.size-1

for j in 0..avalues.size-i-1
if(j+1 > hj.size-1)
	break 
end

if(avalues[j] < avalues[j+1])

temp = avalues[j]
tempk = akeys[j]

avalues[j] = avalues[j+1]
akeys[j] = akeys [j+1]

avalues[j+1] = temp
akeys[j+1] = tempk

end

end
end

h = Hash.new
for o in 0..akeys.size-1
h[akeys[o]]  = avalues[o]


end

return h


end

cd = sort_hash(array)
 #cd = array.sort_by{|first,second| second}.reverse

  puts "highest tempreture is "+cd.keys[0]+" in "+cd.values[0].to_s
