local S = minetest.get_translator("stonelike_blocks")

stonelike_blocks = {}
stonelike_blocks.blocks = { "andesite", "diorite", "granite" }

local function make_desc(name)
	return name:sub(1,1):upper()..name:sub(2)
end

for _, name in pairs(stonelike_blocks.blocks) do
	local desc = make_desc(name)

	minetest.register_node(":mcl_core:"..name.."_smoothbrick", {
		description = S("Smooth @1 Bricks", desc),
		_doc_items_longdesc = S("Smooth @1 bricks are decorative bricks made from smooth @2.", name, name),
		tiles = { "stonelike_blocks_"..name.."_bricks.png" },
		groups = { pickaxey = 1, building_block = 1, material_stone = 1, stonecuttable = 1 },
		sounds = mcl_sounds.node_sound_stone_defaults(),
		_mcl_blast_resistance = 6,
		_mcl_hardness = 1.5,
		_mcl_stonecutter_recipes = { "mcl_core:"..name, "mcl_core:"..name.."_smooth" }
	})

	mcl_stairs.register_stair_and_slab(name.."_smoothbrick", {
		baseitem = "mcl_core:"..name.."_smoothbrick",
		description_stair = S("Smooth @1 Bricks Stairs", desc),
		description_slab = S("Smooth @1 Bricks Slab", desc),
		overrides = { _mcl_stonecutter_recipes = {
			"mcl_core:"..name, "mcl_core:"..name.."_smooth", "mcl_core:"..name.."_smoothbrick"
		}}
	})

	mcl_walls.register_wall_def("stonelike_blocks:"..name.."smoothbrick", {
		description = S("Smooth @1 Bricks Wall", desc),
		source = "mcl_core:"..name.."_smoothbrick",
		overrides = { _mcl_stonecutter_recipes = {
			"mcl_core:"..name, "mcl_core:"..name.."_smooth", "mcl_core:"..name.."_smoothbrick"
		}}
	})

	minetest.register_craft({
		output = "mcl_core:"..name.."_smoothbrick 4",
		recipe = {
			{ "mcl_core:"..name.."_smooth", "mcl_core:"..name.."_smooth" },
			{ "mcl_core:"..name.."_smooth", "mcl_core:"..name.."_smooth" }
		}
	})
end
