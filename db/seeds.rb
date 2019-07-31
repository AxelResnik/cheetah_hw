require 'csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'db/MOCK_DATA.csv'

puts 'Destroying old database...'
Product.destroy_all
Producer.destroy_all

puts 'Parsing CSV' 
puts 'Extracting producers'

undefined_producer = Producer.new(name: 'undefined')
name_to_producer = {}
producers = [undefined_producer]
products = []
CSV.foreach(filepath, csv_options) do |row|	
	producer_name = row['producer'.downcase]
	producer = nil
	if producer_name && name_to_producer[producer_name]
		# I have seen this producer before so I just take it from the map
		producer = name_to_producer[producer_name]
	elsif producer_name
		# Havent seen this producer before, I create it in memory
		producer = Producer.new(name: producer_name)
		name_to_producer[producer_name] = producer
		producers << producer
	else
		# Doens't have producer
		producer = undefined_producer
	end


	products << Product.new(name: row['product_name'],
							photo: row['photo_url'],
							barcode: row['barcode'],
							price: row['price_cents'],
							sku: row['sku (unique id)'],
							producer: producer)
end
puts "Finished parsing"

puts "Generating producers & products"
# Bulk insert
Producer.import(producers)
Product.import(products)

puts "Done Generating producers & products"
puts "Done seeding!"