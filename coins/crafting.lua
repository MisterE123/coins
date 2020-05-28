-- Cook gold ingots into 8 gold coins.
minetest.register_craft({
	type = "cooking",
	cooktime = "60",
	output = "coins:gold_coin 8",
	recipe = "default:gold_ingot",
})

minetest.register_craft({
	type = "cooking",
	cooktime = "60",
	output = "coins:silver_coin 8",
	recipe = "moreores:silver_ingot",
})


minetest.register_craft({
	type = "cooking",
	cooktime = "60",
	output = "coins:copper_coin 8",
	recipe = "default:copper_ingot",
})


minetest.register_craft({
	type = "cooking",
	cooktime = "60",
	output = "coins:bronze_coin 8",
	recipe = "default:bronze_ingot",
})

-- craft a metal scrap bucket with 8 coins and an empty bucket

minetest.register_craft({
    type = "shaped",
    output = "coins:gold_scrap_bucket",
    recipe = {
        {"coins:gold_coin", "coins:gold_coin","coins:gold_coin"},
        {"coins:gold_coin", "bucket:bucket_empty","coins:gold_coin"},
        {"coins:gold_coin", "coins:gold_coin","coins:gold_coin"}
    }
})


minetest.register_craft({
    type = "shaped",
    output = "coins:copper_scrap_bucket",
    recipe = {
        {"coins:copper_coin", "coins:copper_coin","coins:copper_coin"},
        {"coins:copper_coin", "bucket:bucket_empty","coins:copper_coin"},
        {"coins:copper_coin", "coins:copper_coin","coins:copper_coin"}
    }
})


minetest.register_craft({
    type = "shaped",
    output = "coins:silver_scrap_bucket",
    recipe = {
        {"coins:silver_coin", "coins:silver_coin","coins:silver_coin"},
        {"coins:silver_coin", "bucket:bucket_empty","coins:silver_coin"},
        {"coins:silver_coin", "coins:silver_coin","coins:silver_coin"}
    }
})


minetest.register_craft({
    type = "shaped",
    output = "coins:bronze_scrap_bucket",
    recipe = {
        {"coins:bronze_coin", "coins:bronze_coin","coins:bronze_coin"},
        {"coins:bronze_coin", "bucket:bucket_empty","coins:bronze_coin"},
        {"coins:bronze_coin", "coins:bronze_coin","coins:bronze_coin"}
    }
})

-- now cook a scrap bucket to get ingots, and return the bucket

minetest.register_craft({
	type = "cooking",
	cooktime = "60",
	output = "default:gold_ingot",
	recipe = "coins:gold_scrap_bucket",
  replacements = {{"coins:gold_scrap_bucket","bucket:bucket_empty"}}
})

minetest.register_craft({
	type = "cooking",
	cooktime = "60",
	output = "moreores:silver_ingot",
	recipe = "coins:silver_scrap_bucket",
  replacements = {{"coins:silver_scrap_bucket","bucket:bucket_empty"}}
})

minetest.register_craft({
	type = "cooking",
	cooktime = "60",
	output = "default:copper_ingot",
	recipe = "coins:copper_scrap_bucket",
	replacements = {{"coins:copper_scrap_bucket","bucket:bucket_empty"}}
})

minetest.register_craft({
	type = "cooking",
	cooktime = "60",
	output = "default:bronze_ingot",
	recipe = "coins:bronze_scrap_bucket",
	replacements = {{"coins:bronze_scrap_bucket","bucket:bucket_empty"}}
})
