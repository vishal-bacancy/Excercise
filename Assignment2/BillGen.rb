#========== DEFINING MENU ===================
menu = {
1 => "Enter new User Details",
2 => "See All users",
3 => "Enter new Product",
4 => "See All Product",
5 => "Start Purchasing..",
6 => "Exit the Program"


}

cust = []
prod = []

#================== DEFINING BILL CLASS=======================
class Bills

attr_accessor  :bill_pro, :price, :gst, :quan

	def initialize(product,price,gst, quan)
		@bill_pro= product
		@price = price
		@gst = gst 
		@quan = quan
		
	end 


end




#==================== METHOD OF PRINTING MENU===================
def printMenu

puts "Select any..."
puts "1. Enter new User Details"
puts "2. See All users"
puts "3. Enter new Product"
puts "4. See All Product"
puts "5. Start Purchasing.."
puts "6. Exit the Program"
i = gets.to_i
return i


end




#====================DEFINING CUSTOMER CLASS================	
class Customer 

	attr_accessor :cust_id, :cust_name, :cust_contact

	def initialize(id,names,contact)
		@cust_id = id
		@cust_name = names
		@cust_contact = contact
	end 

	def display
			puts "customer id  = "+@cust_id.to_s
	puts "customer name  = "+@cust_name.to_s
	puts "customer contact  = "+@cust_contact.to_s
	end
	
end

#====================DEFINING PRODUCT CLASS================

class Product 

	attr_accessor :pro_id, :pro_name, :pro_price, :pro_rate

	def initialize(id,names,price,rate)
		@pro_id = id
		@pro_name = names
		@pro_price = price
		@pro_rate = rate
	end 

	
	
end




#====================IMPORTING CUSTOMERS FROM FILE======================
file = File.open("customer.txt","r") 
		
		 file.each {|line | 
		 	#puts line
			ss = line.to_s.split(':')
		cust.push(Customer.new(ss[0],ss[1],ss[2]))	
		}
		
#====================IMPORTING PRODUCTS FROM FILE======================
file = File.open("products.txt","r") 
		
		 file.each {|line | 
		 	#puts line
			ss = line.to_s.split(':')
		prod.push(Product.new(ss[0],ss[1],ss[2],ss[3]))	
		}















while true

i  = printMenu
case i
	when 1
		print %x{clear}
		print "you choose option #{menu[i]} \n\n"
		puts "Enter User id "
		id = gets.to_i
		puts "Enter User name"
		names = gets.to_s
		puts "Enter contact number"
		contact = gets.to_s
		add = id.to_s+":"+names.chomp+":"+contact
		add.tr('\n','')
		file = File.open("customer.txt", "a") 
		file.puts(add)
		print "\n\n"


		
	when 2
		print %x{clear}
		print "you choose option #{menu[i]} \n\n"
		file = File.open("customer.txt","r+") 
		puts "ID   Name                  Contact NO"
		puts "========================================"
		for i in 0..cust.size-1
				puts(cust[i].cust_id.ljust(3)+"  "+cust[i].cust_name.ljust(20)+"  "+cust[i].cust_contact)
		end

		print "\n\n"
		
	
	when 3
		print %x{clear}
		print "you choose option #{menu[i]} \n\n"

		puts "Enter product id "
		id = gets.to_i
			
		puts "Enter Product name"
		names = gets.to_s
		puts "Enter Product Price"
		price = gets.to_i
		puts "Enter GST rate"
		rate = gets.to_f
		
		add = id.to_s+":"+names.chomp+":"+price.to_s+":"+rate.to_s
		file = File.open("products.txt", "a") 
		file.puts(add)
		print "\n\n"
	
	when 4
		print %x{clear}
		print "you choose option #{menu[i]} \n\n"
		file = File.open("products.txt","r+") 
		puts "ID   Name             Price  GST"
		puts "======================================"
		for i in 0..prod.size-1
				puts prod[i].pro_id.ljust(3)+"  "+prod[i].pro_name.ljust(15	)+"  "+prod[i].pro_price.ljust(5)+"  "+prod[i].pro_rate
		end

		print "\n\n"

	
	when 5
		
		bill =[]
		print %x{clear}
		print "you choose option #{menu[i]} \n\n"
		flag=1

		while flag==1
		
			file = File.open("products.txt","r+") 
			puts "ID   Name             Price  GST"
			puts "======================================"
			for i in 0..prod.size-1
				puts prod[i].pro_id.ljust(3)+"  "+prod[i].pro_name.ljust(15	)+"  "+prod[i].pro_price.ljust(5)+"  "+prod[i].pro_rate
			end
			print "\n\n"
			puts "Select Product ID to choose Product"
			pr = gets.to_i
			puts "Enter quantity "
			qu = gets.to_i
			
			for i in 0..prod.size-1
				if(pr == prod[i].pro_id.to_i)
					bill.push(Bills.new(prod[i].pro_name.to_s,prod[i].pro_price.to_f,prod[i].pro_rate.to_f,qu))
					break	
				end
			end

			puts "want to purchase more?(1 for yes/0 for no)"
			c = gets.to_i
			if(c==0)
				flag=0	
			end
			print %x{clear}

			
		
		end
		puts "bill size is #{bill.size}"
			mtot=0.0
			 
				puts "Name             Price    Quantity    GST    Total "
			puts "=========================================================="
			
			for i in 0..bill.size-1

				#p bill[i].bill_pro.to_s
				puts bill[i].bill_pro.to_s.ljust(15)+"  "+bill[i].price.to_s.ljust(7)+"       "+bill[i].quan.to_s.ljust(4)+"   "+bill[i].gst.to_s.ljust(4)+" "+(((((bill[i].price.to_f * bill[i].quan.to_f))*bill[i].gst.to_f)/100)+bill[i].price.to_f).to_s
		
				mtot+=((((bill[i].price.to_f*bill[i].quan.to_i))*bill[i].gst.to_f)/100)+bill[i].price.to_f


			end 
			

			puts "your final payable amount is : #{mtot}"
	
	when 6
		print %x{clear}
		exit
	else
		puts "Invalid Choice... choose again"
	
end

end





