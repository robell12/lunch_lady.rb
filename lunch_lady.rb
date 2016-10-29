# user chooses from main dishes
# 2 side dishes
#repeat users order
# c totals items and displays total
# user can choose as many add on as they want before total
# clear choices and start ove
# user starts with money and cannot exceed that total
# quit accessible anywhere
# dishes and items have discriptions and you have the option to view disciption
# display menu item with fat cal carbs ext

class Person

	attr_accessor :name, :money

	def initialize(name, money)
		puts "What is your name?"
	  @name = gets.strip
	  @money = 10
	  main_menu
	end



	def main_menu
		puts "---Welcome to Lunch---"
		puts "We are pleased to annouce these main dishes"
		puts "---Hamburger       $5.00"
		puts "---Ceasar Salad    $3.00"
		puts "---Gross Spagetti  $4.00"
		puts "Put 1 to order #{@name}, you have $#{@money}"
		puts "Put reset if you are here for another lunch"
		puts "Type quit if you want to quit"
		@choice = gets.strip.downcase
		case @choice
	  when "1"
	  	ordering
	  when "reset"
	  	@money = 10
	  	main_menu
	  when "quit"
	    quit
	  else
	  	puts "Please try again"
	  	main_menu
	  end

	end

	def ordering
	main = [
		{item: 'hamburger',
		  price: 5.00,
		  health: "10000 cal, 10000 carbs, 100 fat",
		  descrip:
		  "Our old fashioned hamburgers have an artisan bun with fresh tamatoes and letuce. 
		  We take pride in our all beef patties. 
		  It is delicious. 
		  Try it with our fries for a good time.\n"},
		{item: 'salad',
			price: 3.00,
			health: "0 cal, 0 carbs, 0 fat",
			descrip: "Fresh letuce with a lot of dressing.\n"},
		{item: 'spagetti',
			price: 4.00,
			health: "50 cal, 20 carb, 10 fat",
			descrip: "Gross Spagetti!
		  Our spagetti sucks! Undercooked, crunchy noodles and sauce."},
		{item: 'fries',
			price: 1.50,
			descrip: "French Fries made with potatoes and too much salt."},
		{item: 'zuccini',
			price: 2.00,
			descrip: "Over cooked or burnt zuccini. Cooked to your liking."},
		{item: 'bun',
			price: 1.00,
		  descrip: "A hot dog bun. Because why not No hot dog, just bun."}
	]

	  main.each { |x,i| puts "\n#{x[:item]} $#{x[:price]}"}
	  puts "\nPut item and a + to see discription. eg. hamburger+"
	  puts "Or type what you want?"
	  main_choice = gets.strip.downcase

	  case main_choice
	  when "+"
	  	descrip_all
	  when "hamburger"
	  	@money = @money - main[0][:price]
	  	eat_1 = main[0][:item]
	    puts "\nYou choose #{eat_1} and now have $#{@money}"
	  when "salad"
	    @money = @money - main[1][:price]
	    eat_1 = main[1][:item]
	    puts "\nYou choose #{eat_1} and now have $#{@money}"
	  when "spagetti"
	    @money = @money - main[2][:price]
	    eat_1 = main[2][:item]
	    puts "\nYou choose #{eat_1} and now have $#{@money}"
	  when "hamburger+"
	  	puts "#{main[0][:descrip]}
	  	  #{main[0][:health]}"
	  	ordering
	  when "salad+"
	  	puts "#{main[1][:descrip]}
	  	  #{main[1][:health]}"
	  	ordering
	  when "spagetti+"
	  	puts "#{main[2][:descrip]}
	  	  #{main[2][:health]}"
	  	ordering
	  when "fries+"
	  	puts "#{main[3][:descrip]}"
	  	ordering
	  when "zuccini+"
	  	puts "#{main[4][:descrip]}"
	  	ordering
	  when "bun+"
	  	puts "#{main[5][:descrip]}"
	  	ordering
	  else
	    puts "Please select an main option"
	    @money = 10
	    ordering
	  end

	  puts "What do you want for a side?"
	  side_choice = gets.strip.downcase
	  case side_choice
	  when "fries"
	  	@money = @money - main[3][:price]
	  	eat_2 = main[3][:item]
	    puts "\nYou choose #{eat_2} and now have $#{@money}"
	  when "zuccini"
	  	@money = @money - main[4][:price]
	  	eat_2 = main[4][:item]
	    puts "\nYou choose #{eat_2} and now have $#{@money}"
	  when "bun"
	  	@money = @money - main[5][:price]
	  	eat_2 = main[5][:item]
	    puts "\nYou choose #{eat_2} and now have $#{@money}"
	  else
	  	puts "Please make a side selection"
	  	@money = 10
	  	ordering

	  end
	  puts "Let me make sure I got your order right"
	  puts "You had #{eat_1} with #{eat_2}. yes or no"
	  respond = gets.strip.downcase
	  case respond
	  when "yes"
	  	puts "You now have $#{@money}"
	  else 
	  	puts "Let's start that again, sorry"
	  	@money = 10
	    ordering
	  end
	  puts "Have a good meal"
	  
	  main_menu
	end

	def quit
		exit
	end

end


person_1 = Person.new(@name, @money)