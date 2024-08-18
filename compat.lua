for _, name in pairs(stonelike_blocks.blocks) do
    minetest.register_alias("mcl_core:"..name.."_bricks", "mcl_core:"..name.."_smoothbrick")
    minetest.register_alias("mcl_stairs:slab_"..name.."_bricks", "mcl_stairs:slab_"..name.."_smoothbrick")
    minetest.register_alias("mcl_stairs:slab_"..name.."_bricks_top", "mcl_stairs:slab_"..name.."_smoothbrick_top")
    minetest.register_alias("mcl_stairs:slab_"..name.."_bricks_double", "mcl_stairs:slab_"..name.."_smoothbrick_double")
    minetest.register_alias("mcl_stairs:stair_"..name.."_bricks", "mcl_stairs:stair_"..name.."_smoothbrick")
    minetest.register_alias("mcl_stairs:stair_"..name.."_bricks_inner", "mcl_stairs:stair_"..name.."_smoothbrick_inner")
    minetest.register_alias("mcl_stairs:stair_"..name.."_bricks_outer", "mcl_stairs:stair_"..name.."_smoothbrick_outer")
    --minetest.register_alias("mcl_walls:"..name.."bricks", "stonelike_blocks:"..name.."smoothbrick")
    --minetest.register_alias("mcl_walls:"..name.."bricks_21", "stonelike_blocks:"..name.."smoothbrick_21")
    --for i = 0, 16 do
    --    minetest.register_alias("mcl_walls:"..name.."bricks_"..tostring(i), "stonelike_blocks:"..name.."smoothbrick_"..tostring(i))
    --end
end
