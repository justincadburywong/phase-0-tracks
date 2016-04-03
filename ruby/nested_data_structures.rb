grocery_store = {
	people: [
		"employees",
		"customers"
	],
	products: [
		"produce",
		"cheese",
		"meat",	
		"bodycare",
		"prepared_foods",
		"frozen_foods",
		canned_goods: [
			"soups",
			"beans",
			"pasta_sauce",
			"vegetables"
			],
		bread: [
			"white",
			"wheat"
			],
		alcohol: [
			"beer",
			"wine",
			"spirits"
		],
	],
	departments: [
		"grocery",
		"dairy",
		"frozen",
		"bulk",
		"produce",
		"floral",
		"beer_and_wine",
		"cheese",
		"bakery",
		"meat",
		"seafood",
		"prepared_foods",
		"customer_service",
		whole_body: [
			"bodycare",
			"vitamins",
			"housewares"
		],
	]
}

p grocery_store[:people][1]
p grocery_store[:products][2]
p grocery_store[:departments][1]
p grocery_store[:departments][13][1]