local Echo, super = Class(LightEnemyBattler)

function Echo:init()
    super:init(self)

    -- Enemy name
    self.name = "Echo"
    -- Sets the actor, which handles the enemy's sprites
    self:setActor("echo_battle")

    -- Enemy health
    self.max_health = 30
    self.health = 30
    -- Enemy attack (determines bullet damage)
    self.attack = 4
    -- Enemy defense (usually 0)
    self.defense = 5
    -- Enemy reward
    self.money = 2
    self.experience = 3

    -- The Speech bubble offset
    self.dialogue_offset = {20, 0}
    self.dialogue_bubble = "ut_wide"

    -- List of possible wave ids, randomly picked each turn
    self.waves = {
    }

    -- Dialogue randomly displayed in the enemy's speech bubble
    self.dialogue = {
    }

    -- Check text (automatically has "ENEMY NAME - " at the start)
    self.check = ""

    -- Text randomly displayed at the bottom of the screen each turn
    self.text = {
    }
    
    self.low_health_text = ""
    self.spareable_text = ""

    self.damage_offset = {0, -65}
end

function Echo:getMoney()
    if self.health >= self.max_health and self.mercy >= 100 then
        return self.money + 2
    else
        return self.money
    end
end

function Echo:getDamageVoice()
    return "ehurt1"
end

return Echo