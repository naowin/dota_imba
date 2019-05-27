require('components/statcollection/init')
require('components/scoreboard_events')
require('internal/util')
require('gamemode')

function Precache( context )
	LinkLuaModifier("modifier_buyback_penalty", "components/modifiers/modifier_buyback_penalty.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_command_restricted", "components/modifiers/modifier_command_restricted.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_custom_mechanics", "components/modifiers/modifier_custom_mechanics.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_dummy_dummy", "components/modifiers/modifier_dummy_dummy.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_fountain_aura_lua", "components/modifiers/modifier_fountain_aura_lua.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_contributor_statue", "components/modifiers/modifier_contributor_statue.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_imba_war_veteran_0", "components/modifiers/modifier_imba_war_veteran.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_imba_war_veteran_1", "components/modifiers/modifier_imba_war_veteran.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_imba_war_veteran_2", "components/modifiers/modifier_imba_war_veteran.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_imba_roshan_ai", "components/modifiers/modifier_imba_roshan_ai.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_meepo_divided_we_stand_lua","components/abilities/heroes/hero_meepo.lua",LUA_MODIFIER_MOTION_NONE)
	LinkLuaModifier("modifier_overthrow_gold_xp_granter", "components/modifiers/overthrow/modifier_overthrow_gold_xp_granter.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_imba_range_indicator", "components/modifiers/modifier_imba_range_indicator.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_illusion_bonuses", "components/modifiers/modifier_illusion_bonuses.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_wearable", "components/modifiers/modifier_wearable.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("modifier_invulnerable_hidden", "components/modifiers/modifier_invulnerable_hidden.lua", LUA_MODIFIER_MOTION_NONE )
	LinkLuaModifier("components/modifiers/demo/lm_take_no_damage", LUA_MODIFIER_MOTION_NONE)
	LinkLuaModifier("modifier_juggernaut_arcana", "components/abilities/heroes/hero_juggernaut", LUA_MODIFIER_MOTION_NONE)
	LinkLuaModifier("modifier_axe_arcana", "components/abilities/heroes/hero_axe", LUA_MODIFIER_MOTION_NONE)

	-- Battlepass precaching
	Wearables:PrecacheWearables(context)
	PrecacheResource("particle_folder", "particles/econ/items/pudge/pudge_arcana", context)
	PrecacheModel("models/heroes/juggernaut/juggernaut_arcana.vmdl", context)
	PrecacheResource("particle_folder", "particles/econ/items/juggernaut/jugg_arcana", context)
	
	-- Battlepass Blink effects
	PrecacheResource("particle", "particles/econ/events/ti8/blink_dagger_ti8_start_lvl2.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti8/blink_dagger_ti8_end_lvl2.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti8/blink_dagger_ti8_start.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti8/blink_dagger_ti8_end.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti5/blink_dagger_start_lvl2_ti5.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti5/blink_dagger_end_lvl2_ti5.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti5/blink_dagger_start_ti5.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti5/blink_dagger_end_ti5.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti6/blink_dagger_start_ti6_lvl2.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti6/blink_dagger_end_ti6_lvl2.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti6/blink_dagger_start_ti6.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti6/blink_dagger_end_ti6.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti4/blink_dagger_start_ti4.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti4/blink_dagger_end_ti4.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/winter_major_2017/blink_dagger_start_wm07.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/winter_major_2017/blink_dagger_end_wm07.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti7/blink_dagger_start_ti7_lvl2.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti7/blink_dagger_end_ti7_lvl2.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti7/blink_dagger_start_ti7.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/ti7/blink_dagger_end_ti7.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/nexon_hero_compendium_2014/blink_dagger_start_nexon_hero_cp_2014.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/nexon_hero_compendium_2014/blink_dagger_end_nexon_hero_cp_2014.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/fall_major_2016/blink_dagger_start_fm06.vpcf", context)
	PrecacheResource("particle", "particles/econ/events/fall_major_2016/blink_dagger_end_fm06.vpcf", context)

	-- Fountain Circle
	PrecacheResource("particle", "particles/ambient/fountain_danger_circle.vpcf", context)

	-- Sounds
--	PrecacheResource("soundfile", "soundevents/diretide_soundevents.vsndevts", context)
	PrecacheResource("soundfile", "soundevents/imba_soundevents.vsndevts", context)
	PrecacheResource("soundfile", "soundevents/imba_item_soundevents.vsndevts", context)

	PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_hell_empress.vsndevts", context) -- Hellion
	PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_abyssal_underlord.vsndevts", context) -- Hellion
	PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_sohei.vsndevts", context) -- Sohei
	PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_ursa.vsndevts", context) -- Malfurion

--	if IsMutationMap() then
--		if IMBA_MUTATION["positive"] == "killstreak_power" then
			PrecacheResource("particle", "particles/hw_fx/candy_carrying_stack.vpcf", context)
--		elseif IMBA_MUTATION["positive"] == "super_fervor" then
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_troll_warlord.vsndevts", context)
--		end

--		if IMBA_MUTATION["negative"] == "death_explosion" then
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_pugna.vsndevts", context)
--		elseif IMBA_MUTATION["negative"] == "death_gold_drop" then
--			PrecacheItemByNameSync("item_bag_of_gold", context)
--		elseif IMBA_MUTATION["negative"] == "monkey_business" then
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_monkey_king.vsndevts", context)
--		elseif IMBA_MUTATION["negative"] == "periodic_spellcast" then
			PrecacheResource("particle", "particles/econ/items/zeus/arcana_chariot/zeus_arcana_thundergods_wrath_start_bolt_parent.vpcf", context) -- Thundergod's Wrath
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_abaddon.vsndevts", context) -- Shield
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_ancient_apparition.vsndevts", context) -- Cold Feet
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_bloodseeker.vsndevts", context) -- Rupture
--			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_bounty_hunter.vsndevts", context) -- Track
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_centaur.vsndevts", context) -- Stampede
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_kunkka.vsndevts", context) -- Torrent
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_ogre_magi.vsndevts", context) -- Bloodlust
--			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_warlock.vsndevts", context)
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_zuus.vsndevts", context) -- Thundergod's Wrath
--		end

--		if IMBA_MUTATION["terrain"] == "danger_zone" then
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_gyrocopter.vsndevts", context)
--		elseif IMBA_MUTATION["terrain"] == "tug_of_war" then
			PrecacheResource("particle", "particles/ambient/tug_of_war_team_dire.vpcf", context)
			PrecacheResource("particle", "particles/ambient/tug_of_war_team_radiant.vpcf", context)
			PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_warlock.vsndevts", context) -- BOB Golem
--		elseif IMBA_MUTATION["terrain"] == "wormhole" then
			PrecacheResource("particle", "particles/ambient/wormhole_circle.vpcf", context)
--		end
--	end

	if IMBA_DIRETIDE == true then
		PrecacheResource("soundfile", "soundevents/diretide_soundevents.vsndevts", context) -- Hellion
	end
end

function Activate()
	print("Activate()")
	GameRules.GameMode = GameMode()
	GameRules.GameMode:InitGameMode()
	-- Run the scoreboard functions that handle share unit / share hero / disable help
	initScoreBoardEvents()
end
