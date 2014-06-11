#!/usr/bin/ruby
class Customer
	def initialize()
		@customer_list = [
			{
				"first_name" => "Amit",
				"last_name" => "Pandita",
				"email" => "apandita@etouch.net",
				"organization" => "Etouch Systems"
			},
			{
				"first_name" => "Yogesh",
				"last_name" => "Kumar",
				"email" => "ykumar@etouch.net",
				"organization" => "Etouch Systems"
			},
			{
				"first_name" => "Santosh",
				"last_name" => "Khore",
				"email" => "skore@etouch.net",
				"organization" => "Etouch Systems"
			},
		]
	end

	def display_details()
		puts "Customer Details: "
		@customer_list.each { |c| puts c["first_name"] + " " + c["last_name"] + " | " + c["email"] + " | " + c["organization"] }
	end

	def total_no_of_customers()
		puts "Total Number of Customers: " + @customer_list.length.to_s
	end
end

cust = Customer.new
cust.total_no_of_customers()
puts "**********"
cust.display_details()