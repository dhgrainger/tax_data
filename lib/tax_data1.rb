require'CSV'
require'pry'

tax_data = {}

class TaxData
end

class Person
	attr_reader :name, :income, :paid, :rate

	def initialize(first_name, last_name, annual_income, tax_paid, tax_rate)
		@name = "#{first_name} #{last_name}"
		@income = annual_income
		@paid = tax_paid
		@rate = tax_rate
	end
end 


CSV.foreach('../tax_data.csv', headers: true) do |row|
	constant = row["first_name"] 
	binding.pry
	constant = Person.new(row["first_name"], row["last_name"], row["annual_income"], row["tax_paid"], row["tax_rate"] )

end


# CSV.foreach('../tax_data.csv', headers: true) do |row|
# 	TaxPayer.new(row[.to_hash)
# end

# binding.pry

