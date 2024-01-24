local Moldsmal, super = Class(LightEnemyBattler)

function Moldsmal:init()
    super:init(self)

    -- Enemy name
    self.name = "Moldsmal"
    self:setActor("moldsmal")

    self.max_health = 50
    self.health = 50
    self.attack = 4
    self.defense = 0
    self.money = 3
    self.experience = 3
    self.mercy = 100

    self.scalevalue = 0.01
    self.yscale = 1

    self.dialogue_offset = {20, 0}
    self.dialogue_bubble = "ut_large"

    self.waves = {
        "moldsmal/pollendrop",
        "moldsmal/splinterbig"
    }

    self.dialogue = {
        scr_gettext("MOLDSMAL_DIALOGUE1"),
        scr_gettext("MOLDSMAL_DIALOGUE2"),
        scr_gettext("MOLDSMAL_DIALOGUE3"),
        scr_gettext("MOLDSMAL_DIALOGUE4")
    }

    self.check = scr_gettext("MOLDSMAL_CHECK")

    self.text = {
        scr_gettext("MOLDSMAL_TEXT1"),
        scr_gettext("MOLDSMAL_TEXT2"),
        scr_gettext("MOLDSMAL_TEXT3"),
        scr_gettext("MOLDSMAL_TEXT4")
    }
    
    self.low_health_text = scr_gettext("MOLDSMAL_LOWHEALTH")

    self:registerAct("Imitate")
    self:registerAct("Flirt")

    self.damage_offset = {0, -65}
end

function Moldsmal:onAct(battler, name)
    if name == "Imitate" then
        self.money = 1
        return scr_gettext("MOLDSMAL_ACT1")
    elseif name == "Flirt" then
        self.money = 1
        return scr_gettext("MOLDSMAL_ACT2")
    end

    return super:onAct(self, battler, name)
end

function Moldsmal:onDefeat(damage, battler)
    if Kristal.getLibConfig("magical-glass", "debug") then
        Game:setFlag("##test_kills", Game:getFlag("##test_kills", 0) + 1)
    end
    self:setScale(2, 2)
    self.scalevalue = 0
    super.onDefeat(self, damage, battler)
end

function Moldsmal:onSpared(...)
    self:setScale(2, 2)
    self.scalevalue = 0
    super.onSpared(self, ...)
end

function Moldsmal:onHurt(...)
    self:setScale(2, 2)
    self.scalevalue = 0
    Game.battle.timer:after(1, function()
        self.scalevalue = 0.01
    end)
    super.onHurt(self, ...)
end

function Moldsmal:update()
    super.update(self)

    self.yscale = self.yscale + (self.scalevalue*DTMULT)
    if self.yscale < 0.9 then
        self.scalevalue = 0.01
    end
    if self.yscale > 1.1 then
        self.scalevalue = -0.01
    end
    self:setScale(2, (self.yscale*2))
end

return Moldsmal