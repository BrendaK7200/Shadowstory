local encounter, super = Class(LightEncounter)

function encounter:init()
    super:init(self)

    self.text = scr_gettext("MOLDSMAL3_ENCOUNTER")

    self.music = "battleut"

    self:addEnemy("moldsmal", SCREEN_WIDTH/2 - 175, 226)
    self:addEnemy("moldsmal", SCREEN_WIDTH/2, 226)
    self:addEnemy("moldsmal", SCREEN_WIDTH/2 + 175, 226)
end

return encounter