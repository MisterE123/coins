-- TODO: coin press machine. copper, silver, coins. melt coins back to ingots

local path = minetest.get_modpath("coins")
dofile(path .. "/crafting.lua")

-- This number controls the number of coins per ingot.
-- 8 is a much more reasonable number (increasing coin value), and allows the proper re-crafting of ingots. This will increase the value of a coin, so go ahead and reduce zombie drops
local coins_per_ingot = 8

-- Register the gold coin craft item.
minetest.register_craftitem("coins:gold_coin", {
        description = "Gold Coin",
        inventory_image = "coins_gold_coin.png",
        stack_max = coins_per_ingot,
})

minetest.register_craftitem("coins:silver_coin", {
        description = "Silver Coin",
        inventory_image = "coins_silver_coin.png",
        stack_max = coins_per_ingot,
})

minetest.register_craftitem("coins:copper_coin", {
        description = "Copper Coin",
        inventory_image = "coins_copper_coin.png",
        stack_max = coins_per_ingot,
})

minetest.register_craftitem("coins:bronze_coin", {
        description = "Bronze Coin",
        inventory_image = "coins_bronze_coin.png",
        stack_max = coins_per_ingot,
})

minetest.register_craftitem("coins:gold_scrap_bucket", {
        description = "Gold Scrap Bucket",
        inventory_image = "coins_bucket_scrap_gold.png",
        stack_max = 1,
})

minetest.register_craftitem("coins:silver_scrap_bucket", {
        description = "Silver Scrap Bucket",
        inventory_image = "coins_bucket_scrap_silver.png",
        stack_max = 1,
})

minetest.register_craftitem("coins:copper_scrap_bucket", {
        description = "Copper Scrap Bucket",
        inventory_image = "coins_bucket_scrap_copper.png",
        stack_max = 1,
})

minetest.register_craftitem("coins:bronze_scrap_bucket", {
        description = "Bronze Scrap Bucket",
        inventory_image = "coins_bucket_scrap_bronze.png",
        stack_max = 1,
})
