def provide_mortgage?(salary, deposit, property_value)
	loan_amount = property_value - deposit
	min_deposit = 0.2 # 20%
	max_multiplier = 5 # Maximum multiple of annual income that can be borrowed
	deposit >= property_value * min_deposit && salary * max_multiplier >= loan_amount
end




my_salary = 45000
my_deposit = 10000
my_property_value = 250000

puts "I can have a mortgage: #{provide_mortgage?(my_salary, my_deposit, my_property_value)}"