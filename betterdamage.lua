PLUGIN.name = "Better Damage"
PLUGIN.author = "Waschbär"
PLUGIN.description = "multiplies the damage on certain body parts."

ix.config.Add("HeadshotDamage", 1, "Headshot damage", nil, {
	data = {min = 0, max = 10, decimals = 2},
	category = "Better Damage"
})

ix.config.Add("ChestDamage", 1, "Default = 1, this setting will increase or decrease the damage percentage, example: 2 = 200%, 1 = 100%(default), 0.5 = 50 %", nil, {
	data = {min = 0, max = 10, decimals = 2},
	category = "Better Damage"
})

ix.config.Add("StomachDamage", 1, "Default = 1, this setting will increase or decrease the damage percentage, example: 2 = 200%, 1 = 100%(default), 0.5 = 50 %", nil, {
	data = {min = 0, max = 10, decimals = 2},
	category = "Better Damage"
})

ix.config.Add("ArmDamage", 1, "Default = 1, this setting will increase or decrease the damage percentage, example: 2 = 200%, 1 = 100%(default), 0.5 = 50 %", nil, {
	data = {min = 0, max = 10, decimals = 2},
	category = "Better Damage"
})

ix.config.Add("LegDamage", 1, "Default = 1, this setting will increase or decrease the damage percentage, example: 2 = 200%, 1 = 100%(default), 0.5 = 50 %", nil, {
	data = {min = 0, max = 10, decimals = 2},
	category = "Better Damage"
})

if SERVER then
	function PLUGIN:ScalePlayerDamage( ply, hitgroup, dmginfo )
		if ( hitgroup == HITGROUP_HEAD ) then
			dmginfo:ScaleDamage( ix.config.Get("HeadshotDamage") )
		else
			if ( hitgroup == HITGROUP_CHEST ) then
				dmginfo:ScaleDamage( ix.config.Get("ChestDamage") )
			else
				if ( hitgroup == HITGROUP_STOMACH ) then
					dmginfo:ScaleDamage( ix.config.Get("StomachDamage") )
				else
					if ( hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_RIGHTARM ) then
							dmginfo:ScaleDamage( ix.config.Get("ArmDamage") )
					else
						if ( hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG ) then
							dmginfo:ScaleDamage( ix.config.Get("LegDamage") )
						end
					end
				end
			end
		end
	end
end
