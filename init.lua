local S = minetest.get_translator("stonelike_blocks")
local groups = { pickaxey = 1, building_block = 1, material_stone = 1, stonecuttable = 1 }

minetest.register_node(":mcl_core:andesite_smoothbrick", {
	description = S("Smooth Andesite Bricks"),
	_doc_items_longdesc = S("Smooth andesite bricks are decorative bricks made from smooth andesite."),
	tiles = { "stonelike_blocks_andesite_bricks.png" },
	groups = groups,
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 6,
	_mcl_hardness = 1.5,
	_mcl_stonecutter_recipes = { "mcl_core:andesite", "mcl_core:andesite_smooth" }
})

minetest.register_node(":mcl_core:diorite_smoothbrick", {
	description = S("Smooth Diorite Bricks"),
	_doc_items_longdesc = S("Smooth diorite bricks are decorative bricks made from smooth diorite."),
	tiles = { "stonelike_blocks_diorite_bricks.png" },
	groups = groups,
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 6,
	_mcl_hardness = 1.5,
	_mcl_stonecutter_recipes = { "mcl_core:diorite", "mcl_core:diorite_smooth" }
})

minetest.register_node(":mcl_core:granite_smoothbrick", {
	description = S("Smooth Granite Bricks"),
	_doc_items_longdesc = S("Smooth granite bricks are decorative bricks made from smooth granite."),
	tiles = { "stonelike_blocks_granite_bricks.png" },
	groups = groups,
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 6,
	_mcl_hardness = 1.5,
	_mcl_stonecutter_recipes = { "mcl_core:granite", "mcl_core:granite_smooth" }
})

mcl_stairs.register_stair_and_slab("andesite_smoothbrick", {
	baseitem = "mcl_core:andesite_smoothbrick",
	description_stair = S("Smooth Andesite Bricks Stairs"),
	description_slab = S("Smooth Andesite Bricks Slab"),
	overrides = {_mcl_stonecutter_recipes = { "mcl_core:andesite", "mcl_core:andesite_smooth", "mcl_core:andesite_smoothbrick" }},
})

mcl_stairs.register_stair_and_slab("diorite_smoothbrick", {
	baseitem = "mcl_core:diorite_smoothbrick",
	description_stair = S("Smooth Diorite Bricks Stairs"),
	description_slab = S("Smooth Diorite Bricks Slab"),
	overrides = {_mcl_stonecutter_recipes = { "mcl_core:diorite", "mcl_core:diorite_smooth", "mcl_core:diorite_smoothbrick" }},
})

mcl_stairs.register_stair_and_slab("granite_smoothbrick", {
	baseitem = "mcl_core:granite_smoothbrick",
	description_stair = S("Smooth Granite Bricks Stairs"),
	description_slab = S("Smooth Granite Bricks Slab"),
	overrides = {_mcl_stonecutter_recipes = { "mcl_core:granite", "mcl_core:granite_smooth", "mcl_core:granite_smoothbrick" }},
})

mcl_walls.register_wall_def("stonelike_blocks:andesitesmoothbrick", {
	description = S("Smooth Andesite Bricks Wall"),
	source = "mcl_core:andesite_smoothbrick",
	_mcl_stonecutter_recipes = { "mcl_core:andesite_smooth", "mcl_core:andesite_smoothbrick" },
})

mcl_walls.register_wall_def("stonelike_blocks:dioritesmoothbrick", {
	description = S("Smooth Diorite Bricks Wall"),
	source = "mcl_core:diorite_smoothbrick",
	_mcl_stonecutter_recipes = { "mcl_core:diorite_smooth", "mcl_core:diorite_smoothbrick" },
})

mcl_walls.register_wall_def("stonelike_blocks:granitesmoothbrick", {
	description = S("Smooth Granite Bricks Wall"),
	source = "mcl_core:granite_smoothbrick",
	_mcl_stonecutter_recipes = { "mcl_core:granite_smooth", "mcl_core:granite_smoothbrick" },
})

minetest.register_craft({
	output = "mcl_core:andesite_smoothbrick 4",
	recipe = {
		{ "mcl_core:andesite_smooth", "mcl_core:andesite_smooth" },
		{ "mcl_core:andesite_smooth", "mcl_core:andesite_smooth" }
	}
})

minetest.register_craft({
	output = "mcl_core:diorite_smoothbrick 4",
	recipe = {
		{ "mcl_core:diorite_smooth", "mcl_core:diorite_smooth" },
		{ "mcl_core:diorite_smooth", "mcl_core:diorite_smooth" }
	}
})

minetest.register_craft({
	output = "mcl_core:granite_smoothbrick 4",
	recipe = {
		{ "mcl_core:granite_smooth", "mcl_core:granite_smooth" },
		{ "mcl_core:granite_smooth", "mcl_core:granite_smooth" }
	}
})
