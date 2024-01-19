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
        "[wave:2]Burble\nburb...",
        "[wave:2]Squorch\n...",
        "[wave:2]*Slime\nsounds*",
        "[wave:2]*Sexy\nwiggle*"
    }

    self.check = "ATK 6 DEF 0\n* Stereotypical: Curvaceously\nattractive,[wait:5] but no brains..."

    self.text = {
        "* Moldsmal burbles quietly.",
        "* Moldsmal waits pensively.",
        "* Moldsmal is ruminating.",
        "* The aroma of lime gelatin\nwafts through."
    }
    
    self.low_health_text = "* Moldsmal has started to spoil."

    self:registerAct("Imitate")
    self:registerAct("Flirt")

    self.damage_offset = {0, -65}
end

function Moldsmal:onAct(battler, name)
    if name == "Imitate" then
        self.money = 1
        return "* You lie immobile with Moldsmal.[wait:10]\n* You feel like you understand\nthe world a little better."
    elseif name == "Flirt" then
        self.money = 1
        return "* You wiggle your hips.[wait:10]\n* Moldsmal wiggles back.[wait:10]\n* What a meaningful conversation!"
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