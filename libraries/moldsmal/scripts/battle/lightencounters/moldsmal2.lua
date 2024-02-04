local encounter, super = Class(LightEncounter)

function encounter:init()
    super:init(self)

    self.text = scr_gettext("MOLDSMAL2_ENCOUNTER")

    self.music = "battle1"

    self:addEnemy("moldsmal", SCREEN_WIDTH/2 - 125, 226)
    self:addEnemy("moldsmal", SCREEN_WIDTH/2 + 125, 226)
end

return encounter