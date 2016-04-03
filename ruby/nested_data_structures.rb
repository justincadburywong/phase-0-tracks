grocery_store = {
  people: [
  	:employees,
  	:customers
  ],
  products: {
  	produce: "perishable",
  	cheese: "perishable",
  	meat: "perishable",	
  	bodycare: "non-perishable",
  	prepared_foods: "perishable",
  	frozen_foods: "perishable",
  	canned_goods: {
  	  soups: "non-perishable",
  	  beans: "non-perishable",
  	  pasta_sauce: "non-perishable",
  	  vegetables: "non-perishable"
  	  },
  	bread: {
  	  white: "non-perishable",
  	  wheat: "perishable"
  	  },
  	alcohol: {
  	  beer: "perishable",
  	  wine: "non-perishable",
  	  spirits: "non-perishable"
  	},
  },
  departments: [
  	:grocery,
  	:dairy,
  	:frozen,
  	:bulk,
  	:produce,
  	:floral,
  	:beer_and_wine,
  	:cheese,
  	:bakery,
  	:meat,
  	:seafood,
  	:prepared_foods,
  	:customer_service,
  	whole_body: [
  	  :bodycare,
  	  :vitamins,
  	  :housewares
  	],
  ]
}

p grocery_store[:people][1]
p grocery_store[:products][:produce]
p grocery_store[:products][:canned_goods][:beans]
p grocery_store[:departments][1]
p grocery_store[:departments][13]