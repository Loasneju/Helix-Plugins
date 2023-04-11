local PLUGIN = PLUGIN

PLUGIN.name = "Jump Cooldown"
PLUGIN.author = "Bot01"
PLUGIN.description = "Adds a cooldown to jumping and prevents player from bhop."

local last_jump_time = 0
local jump_cooldown = 0.8

function PLUGIN:SetupMove(ply, mv, cmd)
    if ply:OnGround() and mv:KeyPressed(IN_JUMP) then
        local cur_time = CurTime()
        if cur_time - last_jump_time < jump_cooldown then
            mv:SetButtons(bit.band(mv:GetButtons(), bit.bnot(IN_JUMP)))
        else
            last_jump_time = cur_time
        end
    end
end