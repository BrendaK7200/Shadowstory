local actor, super = Class(Actor, "moldsmal")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Moldsmal"

    -- Width and height for this actor, used to determine its center
    self.light_battle_width = 46
    self.light_battle_height = 36

    self.hitbox = {0, 0, 16, 16}

    self.use_light_battler_sprite = true

    self.path = "enemies/moldsmal"
    self.default = "idle"

    self.animations = {
        ["lightbattle_hurt"] = {"idle", 1, true},
        ["defeat"] = {"idle", 1, true}
    }
    
    self:addLightBattlerPart("body", {
        ["sprite"] = function()
            local sprite = Sprite(self.path.."/idle", -2, 3)
            sprite.layer = 500
            sprite:play(1, true)
            return sprite
        end
    })

end

return actor