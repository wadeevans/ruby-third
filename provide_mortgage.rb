def provide_mortgage?(salary, deposit, property_value, bankrupt)
	loan_amount = property_value - deposit

	min_deposit = property_value < 650000 ? 0.05 : 0.2 # 5% if property is less than $650000 and 20% if it is $650000 or more
	max_multiplier = 5 # Maximum multiple of annual income that can be borrowed
	!bankrupt && (deposit >= property_value * min_deposit && (salary * max_multiplier >= loan_amount || deposit >= property_value * 0.75))
end




my_salary = 5000
my_deposit = 150000
my_property_value = 200000

puts "I can have a mortgage: #{provide_mortgage?(my_salary, my_deposit, my_property_value, true)}"