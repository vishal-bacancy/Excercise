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

def sort_array(arr)
minv = 0
mink = ""
i=1
r=0
tempk=""
tempv=0
minv = arr[0].to_h.values
mink = arr[0].to_h.keys
while i<arr.size
if(min>arr[i].to_h.values)
	tempk = arr[i].to_h.keys
	tempv  = arr[i].to_h.values
	arr[i].to_h.keys = mink
	arr[i].to_h.values = minv



end


end


 cd = array.sort_by{|first,second| second}.reverse

  puts "highest tempreture is "+cd.to_h.keys[0]+" in "+cd.to_h.values[0].to_s
