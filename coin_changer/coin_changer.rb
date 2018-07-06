puts "How much change do you need?"
amount = gets.chomp

def coin_sorter(amount)
    exchange = {}
	coins = {"quarter" => 25, "dime" => 10, "nickel" => 5, "penny" => 1}
	coins.each do |coin, value|
	    if amount >= value
	    	exchange[coin] = amount / value
	    	amount = amount % value
	    end
	end	   
	exchange
end

 #if amount >= coins["quarter"]
		 # exchange["quarter"] = amount / coins["quarter"]
		  #amount = amount % coins["quarter"]
	    #end
	    #if amount >= coins["dime"]
		 # exchange["dime"] = amount / coins["dime"]
		  #amount = amount % coins["dime"]
	    #end
	    #if amount >= coins["nickel"]
		 # exchange["nickel"] = amount / coins["nickel"]
          #amount = amount % coins["nickel"]
        #end 
	    #if amount >= coins["penny"]
		 # exchange["penny"] = amount / coins["penny"]
		  #amount = amount % coins["penny"]
	    #end