class Bill

	attr_accessor :num_people, :bill_without_tip, :tip_percent

	attr_reader :tip_amount, :total_bill, :my_share


	def initialize
		@num_people = num_people
		@bill_without_tip = bill_without_tip
		@tip_percent = tip_percent
	end

	def float(request)
		puts request
		gets.to_f
	end

	def start
		divider
		total_bill
		my_share
	end


	def num_people
		@num_people = float "Who many in your party?"
	end

	def bill_without_tip
		@bill_without_tip = float "Please enter your bill ammount:"
	end

	def tip_percent
		@tip_percent = float "Please enter your tip percentage:"
	end

	def total_bill
		@total_bill  = @bill_without_tip * (@tip_percent/100.0)
		puts "The total bill is:\t $#{@total_bill}"
	end


	def my_share
		@my_share = @total_bill / @num_people
		puts "My share of the bill:\t $#{@my_share}"
		@my_share.round(2)
	end

	def divider(br=nil)
		puts "*"*50
		if br
			puts ""
		end
	end


end



# def test
# 	party1 = Bill.new(4, 100, 20)
# 	p party1.num_people
# 	p party1.bill_without_tip
# 	p party1.tip_amount
# 	p party1.total_bill
# 	p party1.my_share
# 	party2 = Bill.new(6, 145, 18)
# 	p party2.num_people
# 	p party2.bill_without_tip
# 	p party2.tip_amount
# 	p party2.total_bill
# 	p party2.my_share

# end


test = Bill.new

test.start


# tip = 40 * 0.20
# total = 40 + tip
# my_share = total / 3
# puts my_share

# bill = 
# num_people = 
# tip_percent = 0.20


# tip = bill * tip_percent
# total = tip + bill
# my_share = total / num_people
# puts my_share
