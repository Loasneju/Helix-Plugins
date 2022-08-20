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
		local hitgroups = {
                [HITGROUP_HEAD] = function ()
                    dmginfo:ScaleDamage( ix.config.Get("HeadshotDamage") )
                end,
                [HITGROUP_CHEST] = function ()
                    dmginfo:ScaleDamage( ix.config.Get("ChestDamage") )
                end,
                [HITGROUP_STOMACH] = function ()
                    dmginfo:ScaleDamage( ix.config.Get("StomachDamage") )
                end,
                [HITGROUP_LEFTARM] = function ()
                    dmginfo:ScaleDamage( ix.config.Get("ArmDamage") )
                end,
                [HITGROUP_LEFTLEG] = function ()
                    dmginfo:ScaleDamage( ix.config.Get("LegDamage") )
                end,
                [HITGROUP_RIGHTARM] = function ()
                    dmginfo:ScaleDamage( ix.config.Get("ArmDamage") )
                end,
                [HITGROUP_RIGHTLEG] = function ()
                    dmginfo:ScaleDamage( ix.config.Get("LegDamage") )
                end
			}
            hitgroups[hitgroup]()
    end    
end
