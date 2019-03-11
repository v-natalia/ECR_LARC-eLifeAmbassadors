require 'csv'
@fellowships = []
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row, header_converters: :symbol }
filepath = 'Fellowships.csv'

CSV.foreach(filepath, csv_options) do |row|
  # puts "#{row['Name']}, a #{row['Appearance']} beer from #{row['Origin']}"
  row[:id] = row[:id].to_i
  @fellowships = Fellowship.new(row)
end
