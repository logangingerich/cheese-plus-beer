# Create Cheeses
Cheese.create!(name:"Cheddar")
Cheese.create!(name:"Camembert")
Cheese.create!(name:"Brie")
Cheese.create!(name:"Gruyere")
Cheese.create!(name:"Gorgonzola")
Cheese.create!(name:"Wensleydale")
Cheese.create!(name:"Roquefort")
Cheese.create!(name:"Appenzellar")
Cheese.create!(name:"Challerhocker")
Cheese.create!(name:"Raclette")
Cheese.create!(name:"Triple Creme")

# Create Beers
Beer.create!(name:"Ale")
Beer.create!(name:"Lager")
Beer.create!(name:"Stour")
Beer.create!(name:"IPA / India Pale Ale")
Beer.create!(name:"Pilsner")
Beer.create!(name:"Porter")
Beer.create!(name:"Wheat Beer")
Beer.create!(name:"Brown Ale")
Beer.create!(name:"Bitter")
Beer.create!(name:"Bock")
Beer.create!(name:"Saison")

 puts "Seed finished"
 puts "#{Cheese.count} cheeses created!"
 puts "#{Beer.count} beers created!"
