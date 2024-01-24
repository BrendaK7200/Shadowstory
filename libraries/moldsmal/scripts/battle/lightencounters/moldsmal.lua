local encounter, super = Class(LightEncounter)

function encounter:init()
    super:init(self)

    self.text = scr_gettext("MOLDSMAL_ENCOUNTER")

    self.music = "battleut"

    self:addEnemy("moldsmal", SCREEN_WIDTH/2, 226)
end

return encounter