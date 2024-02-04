local encounter, super = Class(LightEncounter)

function encounter:init()
    super:init(self)

    self.text = "* Froggit hopped close!"

    self.music = "battle1"

    self:addEnemy("froggit", SCREEN_WIDTH/2 - 49, 246)
end

return encounter