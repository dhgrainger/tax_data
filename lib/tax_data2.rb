require'CSV'
require'pry'

tax_data = {}

# class TaxData
# end

# class Person
# 	attr_reader :name, :income, :paid, :rate

# 	def initialize(taxes)
# 		@name = "#{taxes["first_name"]} #{taxes["last_name"]}"
# 		@income = taxes["annual_income"]
# 		@paid = taxes["tax_paid"]
# 		@rate = taxes["tax_rate"]
# 	end
# end 


CSV.foreach('../tax_data.csv', headers: true, header_converters: :symbol, converters: :all) do |row|
	tax_data[row[:first_name]] = row.to_hash
end


# CSV.foreach('../tax_data.csv', headers: true) do |row|
# 	TaxPayer.new(row[.to_hash)
# end

# binding.pry
binding.pry
