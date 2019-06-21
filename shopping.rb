 	ch=true
 	cart_Items=Array.new

    shopping_Items=Array.new

    cart_Items=Array.new
    
    vegetables = Hash.new
	vegetables["Vegetables"] = 88

	shopping_Items.push(vegetables)

	super_food = Hash.new
	super_food["Super_Food"] = 80

	shopping_Items.push(super_food)

	nuts = Hash.new
	nuts["Nuts"] = 15

	shopping_Items.push(nuts)

	snacks = Hash.new
    snacks["Snacks"]=90
    
    shopping_Items.push(snacks)

    dry_Fruits = Hash.new
    dry_Fruits["Dry_Fruits"]=100

    shopping_Items.push(dry_Fruits)

    # puts "list:"
    # puts items
    
    # @a=""
    # @b=""
    while ch==true
    puts "****************************************************************"
   	puts "1.List Of Items "
	puts "2.Select Of Items You Want To Parchase"
	puts "3.Display Cart Items"
	puts "4.Remove from Item into Cart"
	puts "5.After Removeing Remaning List of Items------"
	puts "6.After Remove Item List"
	puts "7.Billing Of All Cart Items"
	puts "*****************************************************************"

	puts "enter your choice"
	choice=gets.chomp.to_i

    case choice

    when 1  
    	    puts "*****************************************************************"
            puts "Display List Of Items"
            puts shopping_Items
            
    when 2  
    	    puts "*****************************************************************"
    	    puts "enter product id"
    	    before_select_Items=gets.chomp.to_i
    	    
    	    select_Items=shopping_Items[before_select_Items]
    	    # puts select_Items
    	    puts "*****************************************************************"

    	    cart_Items.push(select_Items)
    	    shopping_Items.delete(select_Items)
    	    
    	   
    when 3
    		puts "*****************************************************************"
    		puts "Display Cart Items----"
    		puts cart_Items
    		# puts "*****************************************************************"
    when 4  
    	    puts "*****************************************************************"
    	    puts "Select Item You Want You Remove"

    	    select_Item_remove=gets.chomp.to_i

    	    b=cart_Items[select_Item_remove]

    	    cart_Items.delete(b)

    	    shopping_Items.push(b)
    when 5  
    	    puts "After Remove Cart Item---"
    	    puts cart_Items
    	    
    when 6  
    		puts "*****************************************************************"
            puts "After Remove Item List--"
            puts select_Items
     		
    when 7 
    		shopping_Bill=cart_Items.flat_map(&:values).sum
    		puts "All Cart Item Bill "
    	    puts shopping_Bill

    end

   end         