# Create Cheeses
Cheese.create!(name:"Sharp Cheddar")
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
Cheese.create!(name:"Asiago")
Cheese.create!(name:"Blue - General")
Cheese.create!(name:"Blue Cheddar")
Cheese.create!(name:"Mild Cheddar")
Cheese.create!(name:"Chevre")
Cheese.create!(name:"Colby")
Cheese.create!(name:"Comte")
Cheese.create!(name:"Feta")
Cheese.create!(name:"Aged Gouda")
Cheese.create!(name:"Smoked Gouda")
Cheese.create!(name:"Young Gouda")
Cheese.create!(name:"Havarti")
Cheese.create!(name:"Limburger")
Cheese.create!(name:"Monterey Jack")
Cheese.create!(name:"Muenster")
Cheese.create!(name:"Munster")
Cheese.create!(name:"Myzithra")
Cheese.create!(name:"Parmiggiano-Reggiano / Parmesan")
Cheese.create!(name:"Provolone")
Cheese.create!(name:"Pecorino Romano")
Cheese.create!(name:"Mild Swiss")
Cheese.create!(name:"Fontina")
Cheese.create!(name:"Edam")
Cheese.create!(name:"Emmental")
Cheese.create!(name:"Mozzarella")
Cheese.create!(name:"Ossau-Iraty")
Cheese.create!(name:"Epoisses")
Cheese.create!(name:"Taleggio")
Cheese.create!(name:"Red Leicester")
Cheese.create!(name:"Cheshire")
Cheese.create!(name:"Gloucester")
Cheese.create!(name:"Morbier")
Cheese.create!(name:"Pepper Jack")
Cheese.create!(name:"Idiazabal")
Cheese.create!(name:"Dubliner")

# Create Beers
Beer.create!(name:"Ale - General")
Beer.create!(name:"Lager")
Beer.create!(name:"Stout")
Beer.create!(name:"IPA / India Pale Ale")
Beer.create!(name:"Pilsner")
Beer.create!(name:"Porter")
Beer.create!(name:"Wheat Beer")
Beer.create!(name:"Brown Ale")
Beer.create!(name:"Bitter")
Beer.create!(name:"Bock")
Beer.create!(name:"Saison")
Beer.create!(name:"Biere de Garde")
Beer.create!(name:"Dunkel")
Beer.create!(name:"Gueuze")
Beer.create!(name:"Weissbier")
Beer.create!(name:"Doppelbock")
Beer.create!(name:"Dubbel")
Beer.create!(name:"Scotch Ale")
Beer.create!(name:"Kolsch")
Beer.create!(name:"Blonde Ale")
Beer.create!(name:"Pale Ale")
Beer.create!(name:"Altbier")
Beer.create!(name:"Amber Lager")
Beer.create!(name:"Hefeweizen")
Beer.create!(name:"Lambic")
Beer.create!(name:"Imperial Stout")
Beer.create!(name:"Rauchbier")
Beer.create!(name:"Weissbock")
Beer.create!(name:"Barley Wine")
Beer.create!(name:"Helles")
Beer.create!(name:"Abbey")
Beer.create!(name:"Trappist")
Beer.create!(name:"Marzen")
Beer.create!(name:"Old Ale")


Beer.all.each do |beer|
  5.times do
    p = beer.pairings.new(cheese: Cheese.all.sample)
    p.save
  end
end

Cheese.all.each do |cheese|
  5.times do
    p = cheese.pairings.new(beer: Beer.all.sample)
    p.save
  end
end

puts "Seed finished"
puts "#{Cheese.count} cheeses created!"
puts "#{Beer.count} beers created!"
puts "#{Pairing.count} pairings created!"


u = User.new
u.email = 'example@example.com'
u.password = 'password'
u.password_confirmation = 'password'
u.save
