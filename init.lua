dofile(minetest.get_modpath("icemons").."/api.lua")
-- icemons:register_spawn(name, description, nodes, max_light, min_light, chance, active_object_count, max_height)
icemons:register_spawn("icemons:ice", {"default:ice"}, 12, -1, 900, 1, 31000)
icemons:register_mob("icemons:ice", {
	type = "monster",
	hp_min = 25,
	hp_max = 80,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "ice.x",
	textures = {"ice.png"},
	visual_size = {x=3.5, y=2.8},
	makes_footstep_sound = true,
	view_range = 14,
	walk_velocity = 2.0,
	run_velocity = 2.9,
	damage = 2,
	drops = {
		{name = "default:ice",
		chance = 1,
		min = 3,
		max = 6,},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0.05,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 37,
		punch_end = 49,
	}

})

icemons:register_spawn("icemons:snow", {"default:snow"}, 5, -1, 13000, 1, 31000)
icemons:register_mob("icemons:snow", {
	type = "monster",
	hp_min = 25,
	hp_max = 80,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "ice.x",
	textures = {"snow.png"},
	visual_size = {x=5.5, y=2.8},
	makes_footstep_sound = true,
	view_range = 14,
	walk_velocity = 1.0,
	run_velocity = 2.0,
	damage = 2,
	drops = {
		{name = "default:snow",
		chance = 1,
		min = 3,
		max = 6,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0.05,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 37,
		punch_end = 49,
	}

})




if minetest.setting_get("log_mods") then
	minetest.log("action", "ice mobs loaded")
end







