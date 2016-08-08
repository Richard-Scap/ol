require 'csv'
require 'progress_bar'

#instantiate ProgressBar
bar = ProgressBar.new(50000, :bar, :counter, :percentage, :elapsed)

#point to csv file location, then in block read csv line by line (foreach)
csv_text = File.open('engineering_project_businesses.csv')
CSV.foreach(csv_text, :headers => true) do |row|
  b = Business.new
  b.uuid = row['uuid']
  b.name = row['name']
  b.address = row['address']
  b.address2 = row['address2']
  b.city = row['city']
  b.state = row['state']
  b.zip = row['zip']
  b.country = row['country']
  b.phone = row['phone']
  b.website = row['website']
  b.created_at = row['created_at']
  b.save
  bar.increment!
end
